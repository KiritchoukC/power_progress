import 'package:flutter/foundation.dart';
import 'package:power_progress/application/exercise/month/month_bloc.dart';

import 'package:power_progress/application/exercise/week/week_cubit.dart';
import 'package:power_progress/application/one_rm/one_rm_bloc.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/domain/workout/i_workout_repository.dart';
import 'package:power_progress/domain/workout/workout_failure.dart';
import 'package:power_progress/domain/shared/week_enum.dart';

class MarkDoneHandler {
  final WeekCubit weekCubit;
  final MonthBloc monthBloc;
  final OneRmBloc oneRmBloc;

  final IWorkoutRepository workoutRepository;

  MarkDoneHandler({
    @required this.weekCubit,
    @required this.monthBloc,
    @required this.oneRmBloc,
    @required this.workoutRepository,
  });

  Stream<WorkoutState> call(MarkDone event) async* {
    yield const WorkoutState.markDoneInProgress();

    final output =
        await workoutRepository.markDone(event.exerciseId, event.month, event.week, event.repsDone);

    yield* output.fold(
      (failure) async* {
        yield WorkoutState.error(message: failure.toErrorMessage());
      },
      (_) async* {
        yield WorkoutState.markedDone(
          exerciseId: event.exerciseId,
          month: event.month,
          oneRm: event.oneRm,
        );

        weekCubit.updateNextWeek(event.exerciseId, event.week.next());

        event.week.maybeWhen(
          realization: () async => oneRmBloc.add(
            OneRmEvent.generateAndSave(
              exerciseId: event.exerciseId,
              oneRm: event.oneRm,
              incrementation: event.incrementation,
              month: event.month,
              repsDone: event.repsDone,
            ),
          ),
          deload: () async => monthBloc.add(
            MonthEvent.updateNextMonth(
              exerciseId: event.exerciseId,
              nextMonth: event.month.next,
            ),
          ),
          orElse: () {},
        );
      },
    );
  }
}

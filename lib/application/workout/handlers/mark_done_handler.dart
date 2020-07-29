import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/application/exercise/month/month_cubit.dart';

import 'package:power_progress/application/exercise/week/week_cubit.dart';
import 'package:power_progress/application/one_rm/one_rm_cubit.dart';
import 'package:power_progress/application/workout/workout_cubit.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/workout/i_workout_repository.dart';
import 'package:power_progress/domain/workout/workout_failure.dart';
import 'package:power_progress/domain/shared/week_enum.dart';

class MarkDoneHandler {
  final WeekCubit weekCubit;
  final MonthCubit monthCubit;
  final OneRmCubit oneRmCubit;

  final IWorkoutRepository workoutRepository;

  MarkDoneHandler({
    @required this.weekCubit,
    @required this.monthCubit,
    @required this.oneRmCubit,
    @required this.workoutRepository,
  });

  Future call({
    @required Function(WorkoutState) emit,
    @required int exerciseId,
    @required Month month,
    @required WeekEnum week,
    @required Option<int> repsDone,
    @required OneRm oneRm,
    @required Incrementation incrementation,
  }) async {
    emit(const WorkoutState.markDoneInProgress());

    final output = await workoutRepository.markDone(exerciseId, month, week, repsDone);

    output.fold(
      (failure) => emit(WorkoutState.error(message: failure.toErrorMessage())),
      (_) {
        emit(WorkoutState.markedDone(
          exerciseId: exerciseId,
          month: month,
          oneRm: oneRm,
        ));

        weekCubit.updateNextWeek(
          exerciseId: exerciseId,
          nextWeek: week.next(),
        );

        week.maybeWhen(
          realization: () => oneRmCubit.generateAndSave(
            exerciseId: exerciseId,
            oneRm: oneRm,
            incrementation: incrementation,
            month: month,
            repsDone: repsDone,
          ),
          deload: () => monthCubit.updateNextMonth(
            exerciseId: exerciseId,
            nextMonth: month.next,
          ),
          orElse: () {},
        );
      },
    );
  }
}

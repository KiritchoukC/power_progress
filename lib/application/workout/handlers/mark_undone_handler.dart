import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/application/exercise/month/month_cubit.dart';
import 'package:power_progress/application/exercise/week/week_cubit.dart';
import 'package:power_progress/application/one_rm/one_rm_cubit.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/domain/workout/i_workout_repository.dart';
import 'package:power_progress/domain/workout/workout.dart';
import 'package:power_progress/domain/workout/workout_failure.dart';

class MarkUndoneHandler {
  final WeekCubit weekCubit;
  final MonthCubit monthCubit;
  final OneRmCubit oneRmBloc;

  final IWorkoutRepository workoutRepository;

  MarkUndoneHandler({
    @required this.weekCubit,
    @required this.monthCubit,
    @required this.oneRmBloc,
    @required this.workoutRepository,
  });

  Stream<WorkoutState> call(MarkUndone event) async* {
    yield const WorkoutState.markUndoneInProgress();

    final output = await event.id.fold(
      () {},
      (workoutId) async => workoutRepository.remove(workoutId),
    );

    Stream<WorkoutState> onFailure(WorkoutFailure failure) async* {
      yield WorkoutState.error(message: failure.toErrorMessage());
    }

    Stream<WorkoutState> onSuccess(Unit unit) async* {
      yield WorkoutState.markedUndone(
        exerciseId: event.exerciseId,
        month: event.month,
        oneRm: event.oneRm,
      );

      weekCubit.updateNextWeek(
        exerciseId: event.exerciseId,
        nextWeek: event.week,
      );

      event.week.maybeWhen(
        //? remove onerm for this month ?
        realization: () async => oneRmBloc.generateAndSave(
          exerciseId: event.exerciseId,
          oneRm: event.oneRm,
          incrementation: event.incrementation,
          month: event.month,
          repsDone: some(WorkoutHelper.getTargetReps(event.month)),
        ),
        deload: () async => monthCubit.updateNextMonth(
          exerciseId: event.exerciseId,
          nextMonth: event.month,
        ),
        orElse: () {},
      );
    }

    yield* output.fold(onFailure, onSuccess);
  }
}

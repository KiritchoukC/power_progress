import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/accumulation_workout.dart';
import 'package:power_progress/domain/workout/entities/deload_workout.dart';
import 'package:power_progress/domain/workout/entities/intensification_workout.dart';
import 'package:power_progress/domain/workout/entities/month_workout.dart';
import 'package:power_progress/domain/workout/entities/realization_workout.dart';
import 'package:power_progress/domain/workout/entities/workout.dart';
import 'package:power_progress/domain/workout/entities/workout_done.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';

class GenerateWorkout implements UseCase<MonthWorkout, WorkoutFailure, GenerateWorkoutParams> {
  final IWorkoutRepository repository;

  GenerateWorkout({@required this.repository});

  @override
  Future<Either<WorkoutFailure, MonthWorkout>> call(GenerateWorkoutParams params) async {
    final workoutsDoneEither = await repository.getWorkoutsDone(params.exerciseId);

    return workoutsDoneEither.fold(
      (l) => left(l),
      (workoutsDone) {
        WorkoutDone getWorkoutDone(int exerciseId, int month, WeekEnum week) {
          if (workoutsDone.isEmpty) return null;
          return workoutsDone.firstWhere(
            (x) => x.month == month && x.week == week && x.exerciseId == exerciseId,
            orElse: () => null,
          );
        }

        Workout _getWorkout(WeekEnum week) {
          final workoutDone = getWorkoutDone(params.exerciseId, params.month, week);

          switch (week) {
            case WeekEnum.accumulation:
              return AccumulationWorkout(
                month: params.month,
                oneRm: params.oneRm,
                isDone: workoutDone != null,
                workoutDoneId: workoutDone?.id,
              );
            case WeekEnum.intensification:
              return IntensificationWorkout(
                month: params.month,
                oneRm: params.oneRm,
                isDone: workoutDone != null,
                workoutDoneId: workoutDone?.id,
              );
            case WeekEnum.realization:
              return RealizationWorkout(
                month: params.month,
                oneRm: params.oneRm,
                isDone: workoutDone != null,
                workoutDoneId: workoutDone?.id,
                repsDone: workoutDone?.repsDone,
              );
            case WeekEnum.deload:
              return DeloadWorkout(
                month: params.month,
                oneRm: params.oneRm,
                isDone: workoutDone != null,
                workoutDoneId: workoutDone?.id,
              );
            default:
              throw const UnexpectedError();
          }
        }

        return right(
          MonthWorkout(
            month: params.month,
            oneRm: params.oneRm,
            accumulationWorkout: _getWorkout(WeekEnum.accumulation) as AccumulationWorkout,
            intensificationWorkout: _getWorkout(WeekEnum.intensification) as IntensificationWorkout,
            realizationWorkout: _getWorkout(WeekEnum.realization) as RealizationWorkout,
            deloadWorkout: _getWorkout(WeekEnum.deload) as DeloadWorkout,
          ),
        );
      },
    );
  }
}

class GenerateWorkoutParams extends Equatable {
  final int exerciseId;
  final int month;
  final double oneRm;

  const GenerateWorkoutParams({
    @required this.exerciseId,
    @required this.month,
    @required this.oneRm,
  });

  @override
  List<Object> get props => [exerciseId, month, oneRm];
}

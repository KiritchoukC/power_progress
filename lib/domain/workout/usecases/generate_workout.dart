import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
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
        WorkoutDone getWorkoutDone(int exerciseId, Month month, WeekEnum week) {
          if (workoutsDone.isEmpty) return null;
          return workoutsDone.firstWhere(
            (x) =>
                x.month.getOrCrash() == month.getOrCrash() &&
                x.week == week &&
                x.exerciseId == exerciseId,
            orElse: () => null,
          );
        }

        Workout _getWorkout(WeekEnum week) {
          final workoutDone = getWorkoutDone(params.exerciseId, params.month, week);

          return week.when(
            accumulation: () => AccumulationWorkout(
              month: params.month,
              oneRm: params.oneRm,
              isDone: workoutDone != null,
              workoutDoneId: workoutDone?.id,
            ),
            intensification: () => IntensificationWorkout(
              month: params.month,
              oneRm: params.oneRm,
              isDone: workoutDone != null,
              workoutDoneId: workoutDone?.id,
            ),
            realization: () => RealizationWorkout(
              month: params.month,
              oneRm: params.oneRm,
              isDone: workoutDone != null,
              workoutDoneId: workoutDone?.id,
              repsDone: workoutDone?.repsDone,
            ),
            deload: () => DeloadWorkout(
              month: params.month,
              oneRm: params.oneRm,
              isDone: workoutDone != null,
              workoutDoneId: workoutDone?.id,
            ),
          );
        }

        bool _isPreviousDeloadDone() {
          final deloadWorkoutDone = getWorkoutDone(
            params.exerciseId,
            Month(params.month.getOrCrash() - 1),
            const WeekEnum.deload(),
          );
          return deloadWorkoutDone != null;
        }

        bool _isNextAccumulationDone() {
          final accumulationWorkoutDone = getWorkoutDone(
            params.exerciseId,
            Month(params.month.getOrCrash() + 1),
            const WeekEnum.accumulation(),
          );
          return accumulationWorkoutDone != null;
        }

        return right(
          MonthWorkout(
            month: params.month,
            oneRm: params.oneRm,
            accumulationWorkout: _getWorkout(const WeekEnum.accumulation()) as AccumulationWorkout,
            intensificationWorkout:
                _getWorkout(const WeekEnum.intensification()) as IntensificationWorkout,
            realizationWorkout: _getWorkout(const WeekEnum.realization()) as RealizationWorkout,
            deloadWorkout: _getWorkout(const WeekEnum.deload()) as DeloadWorkout,
            isNextAccumulationDone: _isNextAccumulationDone(),
            isPreviousDeloadDone: params.month.getOrCrash() == 1 || _isPreviousDeloadDone(),
          ),
        );
      },
    );
  }
}

class GenerateWorkoutParams extends Equatable {
  final int exerciseId;
  final Month month;
  final OneRm oneRm;

  const GenerateWorkoutParams({
    @required this.exerciseId,
    @required this.month,
    @required this.oneRm,
  });

  @override
  List<Object> get props => [exerciseId, month, oneRm];
}

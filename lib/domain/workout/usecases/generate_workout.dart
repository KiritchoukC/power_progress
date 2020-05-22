import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../core/usecases/usecase.dart';
import '../../core/entities/weeks.dart';
import '../entities/accumulation_workout.dart';
import '../entities/deload_workout.dart';
import '../entities/intensification_workout.dart';
import '../entities/realization_workout.dart';
import '../entities/month_workout.dart';
import '../entities/workout_done.dart';
import '../entities/workout_failure.dart';
import '../repositories/i_workout_repository.dart';

class GenerateWorkout implements UseCase<MonthWorkout, WorkoutFailure, GenerateWorkoutParams> {
  final IWorkoutRepository repository;

  GenerateWorkout({@required this.repository});

  @override
  Future<Either<WorkoutFailure, MonthWorkout>> call(GenerateWorkoutParams params) async {
    final workoutsDoneEither = await repository.getWorkoutsDone(params.exerciseId);

    return workoutsDoneEither.fold(
      (l) => left(l),
      (workoutsDone) {
        WorkoutDone getWorkoutDone(int month, WeekEnum week) {
          if (workoutsDone.isEmpty) return null;
          return workoutsDone.firstWhere(
            (x) => x.month == month && x.week == week,
            orElse: () => null,
          );
        }

        int getWorkoutDoneId(int month, WeekEnum week) {
          return getWorkoutDone(month, week)?.id;
        }

        bool isDone(int month, WeekEnum week) => getWorkoutDone(month, week) != null;

        int getRealizationRepsDone(int month) {
          return getWorkoutDone(month, WeekEnum.realization)?.repsDone;
        }

        return right(
          MonthWorkout(
            month: params.month,
            oneRm: params.oneRm,
            accumulationWorkout: AccumulationWorkout(
              month: params.month,
              oneRm: params.oneRm,
              isDone: isDone(params.month, WeekEnum.accumulation),
              workoutDoneId: getWorkoutDoneId(params.month, WeekEnum.accumulation),
            ),
            intensificationWorkout: IntensificationWorkout(
              month: params.month,
              oneRm: params.oneRm,
              isDone: isDone(params.month, WeekEnum.intensification),
              workoutDoneId: getWorkoutDoneId(params.month, WeekEnum.intensification),
            ),
            realizationWorkout: RealizationWorkout(
              month: params.month,
              oneRm: params.oneRm,
              isDone: isDone(params.month, WeekEnum.realization),
              repsDone: getRealizationRepsDone(params.month),
              workoutDoneId: getWorkoutDoneId(params.month, WeekEnum.realization),
            ),
            deloadWorkout: DeloadWorkout(
              month: params.month,
              oneRm: params.oneRm,
              isDone: isDone(params.month, WeekEnum.deload),
              workoutDoneId: getWorkoutDoneId(params.month, WeekEnum.deload),
            ),
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

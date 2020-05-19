import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import '../../core/entities/weeks.dart';

import '../../../core/usecases/usecase.dart';
import '../entities/accumulation_workout.dart';
import '../entities/deload_workout.dart';
import '../entities/intensification_workout.dart';
import '../entities/realization_workout.dart';
import '../entities/workout.dart';
import '../entities/workout_failure.dart';
import '../repositories/i_workout_repository.dart';

class GenerateWorkout implements UseCase<Workout, WorkoutFailure, GenerateWorkoutParams> {
  final IWorkoutRepository repository;

  GenerateWorkout({@required this.repository});

  @override
  Future<Either<WorkoutFailure, Workout>> call(GenerateWorkoutParams params) async {
    final workoutsDoneEither = await repository.getWorkoutsDone(params.exerciseId);

    return workoutsDoneEither.fold(
      (l) => left(l),
      (workoutsDone) {
        bool isDone(int month, WeekEnum week) {
          return workoutsDone
              .any((element) => element.containsKey(month) && element.containsValue(week));
        }

        return right(
          Workout(
            month: params.month,
            oneRm: params.oneRm,
            accumulationWorkout: AccumulationWorkout(
                month: params.month,
                oneRm: params.oneRm,
                isDone: isDone(params.month, WeekEnum.accumulation)),
            intensificationWorkout: IntensificationWorkout(
                month: params.month,
                oneRm: params.oneRm,
                isDone: isDone(params.month, WeekEnum.intensification)),
            realizationWorkout: RealizationWorkout(
                month: params.month,
                oneRm: params.oneRm,
                isDone: isDone(params.month, WeekEnum.realization)),
            deloadWorkout: DeloadWorkout(
                month: params.month,
                oneRm: params.oneRm,
                isDone: isDone(params.month, WeekEnum.deload)),
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

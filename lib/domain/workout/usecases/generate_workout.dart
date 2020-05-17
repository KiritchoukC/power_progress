import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../core/usecases/usecase.dart';
import '../entities/accumulation_workout.dart';
import '../entities/deload_workout.dart';
import '../entities/intensification_workout.dart';
import '../entities/realization_workout.dart';
import '../entities/workout.dart';
import '../entities/workout_failure.dart';

class GenerateWorkout implements UseCase<Workout, WorkoutFailure, GenerateWorkoutParams> {
  @override
  Future<Either<WorkoutFailure, Workout>> call(GenerateWorkoutParams params) async {
    return right(
      Workout(
        month: params.month,
        oneRm: params.oneRm,
        accumulationWorkout: AccumulationWorkout(month: params.month, oneRm: params.oneRm),
        intensificationWorkout: IntensificationWorkout(month: params.month, oneRm: params.oneRm),
        realizationWorkout: RealizationWorkout(month: params.month, oneRm: params.oneRm),
        deloadWorkout: DeloadWorkout(month: params.month, oneRm: params.oneRm),
      ),
    );
  }
}

class GenerateWorkoutParams extends Equatable {
  final int month;
  final double oneRm;

  const GenerateWorkoutParams({
    @required this.month,
    @required this.oneRm,
  });

  @override
  List<Object> get props => [oneRm];
}

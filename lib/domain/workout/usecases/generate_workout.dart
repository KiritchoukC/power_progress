import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:power_progress/domain/shared/entities/weeks.dart';

import '../../../core/usecases/usecase.dart';
import '../entities/exercise_set.dart';
import '../entities/workout.dart';
import '../entities/workout_failure.dart';

class GenerateWorkout implements UseCase<Workout, WorkoutFailure, GenerateWorkoutParams> {
  @override
  Future<Either<WorkoutFailure, Workout>> call(GenerateWorkoutParams params) async {
    final weekSets = <Weeks, List<ExerciseSet>>{
      Weeks.accumulation: getAccumulationSets(params.oneRm),
      Weeks.intensification: getIntensificationSets(params.oneRm),
      Weeks.realization: getRealizationSets(params.oneRm),
      Weeks.deload: getDeloadSets(params.oneRm),
    };
    return right(
      Workout(
        incrementation: params.incrementation,
        month: params.month,
        oneRm: params.oneRm,
        weekSets: weekSets,
      ),
    );
  }
}

class GenerateWorkoutParams extends Equatable {
  final int month;
  final double oneRm;
  final double incrementation;

  const GenerateWorkoutParams({
    @required this.month,
    @required this.oneRm,
    @required this.incrementation,
  });

  @override
  List<Object> get props => [oneRm, incrementation];
}

List<ExerciseSet> getAccumulationSets(double oneRm) {
  return [
    ExerciseSet(sets: 5, reps: 10, weight: oneRm * 0.6),
  ];
}

List<ExerciseSet> getIntensificationSets(double oneRm) {
  return [
    ExerciseSet(sets: 1, reps: 5, weight: oneRm * 0.55),
    ExerciseSet(sets: 1, reps: 5, weight: oneRm * 0.625),
    ExerciseSet(sets: 3, reps: 10, weight: oneRm * 0.675),
  ];
}

List<ExerciseSet> getRealizationSets(double oneRm) {
  return [
    ExerciseSet(sets: 1, reps: 5, weight: oneRm * 0.5),
    ExerciseSet(sets: 1, reps: 3, weight: oneRm * 0.6),
    ExerciseSet(sets: 1, reps: 1, weight: oneRm * 0.7),
    ExerciseSet(sets: 1, reps: 10, weight: oneRm * 0.75),
  ];
}

List<ExerciseSet> getDeloadSets(double oneRm) {
  return [
    ExerciseSet(sets: 1, reps: 5, weight: oneRm * 0.4),
    ExerciseSet(sets: 1, reps: 5, weight: oneRm * 0.5),
    ExerciseSet(sets: 1, reps: 5, weight: oneRm * 0.6),
  ];
}

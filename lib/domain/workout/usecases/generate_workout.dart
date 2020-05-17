import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../core/usecases/usecase.dart';
import '../../core/entities/weeks.dart';
import '../entities/exercise_set.dart';
import '../entities/week_set.dart';
import '../entities/workout.dart';
import '../entities/workout_failure.dart';

class GenerateWorkout implements UseCase<Workout, WorkoutFailure, GenerateWorkoutParams> {
  @override
  Future<Either<WorkoutFailure, Workout>> call(GenerateWorkoutParams params) async {
    return right(
      Workout(
        month: params.month,
        oneRm: params.oneRm,
        weekSets: getWeekSets(params.oneRm),
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

List<WeekSet> getWeekSets(double oneRm) {
  return [
    WeekSet(week: Weeks.accumulation, sets: getAccumulationSets(oneRm), isDone: false),
    WeekSet(week: Weeks.intensification, sets: getIntensificationSets(oneRm), isDone: false),
    WeekSet(week: Weeks.realization, sets: getRealizationSets(oneRm), isDone: false),
    WeekSet(week: Weeks.deload, sets: getDeloadSets(oneRm), isDone: false),
  ];
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

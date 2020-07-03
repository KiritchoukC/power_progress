import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/workout/amrap_exercise_set.dart';
import 'package:power_progress/domain/workout/exercise_set.dart';
import 'package:power_progress/domain/workout/value_objects/weight.dart';
import 'package:power_progress/domain/workout/workout.dart';
import 'package:power_progress/domain/workout/workout_failure.dart';

class RealizationWorkout extends Workout {
  final Option<int> repsDone;

  RealizationWorkout({
    @required Month month,
    @required OneRm oneRm,
    @required bool isDone,
    @required this.repsDone,
    @required Option<int> workoutDoneId,
  }) : super(
          month: month,
          oneRm: oneRm,
          isDone: isDone,
          exerciseSets: _getExerciseSets(month, oneRm, isDone, repsDone),
          workoutDoneId: workoutDoneId,
        );
}

List<ExerciseSet> _getExerciseSets(Month month, OneRm oneRm, bool isDone, Option<int> repsDone) {
  return month.moduloMonthNumber.fold(
    (l) => throw const UnexpectedError(),
    (r) {
      switch (r) {
        case 1:
          return [
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.5)),
            ExerciseSet(reps: 3, sets: 1, weight: Weight.fromOneRm(oneRm, 0.6)),
            ExerciseSet(reps: 1, sets: 1, weight: Weight.fromOneRm(oneRm, 0.7)),
            if (isDone)
              repsDone.fold(
                  () => AmrapExerciseSet(
                      reps: 10, sets: 1, weight: Weight.fromOneRm(oneRm, 0.75), isDone: isDone),
                  (a) => AmrapExerciseSet(
                      reps: a, sets: 1, weight: Weight.fromOneRm(oneRm, 0.75), isDone: isDone))
            else
              AmrapExerciseSet(
                  reps: 10, sets: 1, weight: Weight.fromOneRm(oneRm, 0.75), isDone: isDone),
          ];
        case 2:
          return [
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.5)),
            ExerciseSet(reps: 3, sets: 1, weight: Weight.fromOneRm(oneRm, 0.6)),
            ExerciseSet(reps: 2, sets: 1, weight: Weight.fromOneRm(oneRm, 0.7)),
            ExerciseSet(reps: 1, sets: 1, weight: Weight.fromOneRm(oneRm, 0.75)),
            if (isDone)
              repsDone.fold(
                  () => AmrapExerciseSet(
                      reps: 8, sets: 1, weight: Weight.fromOneRm(oneRm, 0.8), isDone: isDone),
                  (a) => AmrapExerciseSet(
                      reps: a, sets: 1, weight: Weight.fromOneRm(oneRm, 0.8), isDone: isDone))
            else
              AmrapExerciseSet(
                  reps: 8, sets: 1, weight: Weight.fromOneRm(oneRm, 0.8), isDone: isDone),
          ];
        case 3:
          return [
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.5)),
            ExerciseSet(reps: 3, sets: 1, weight: Weight.fromOneRm(oneRm, 0.6)),
            ExerciseSet(reps: 2, sets: 1, weight: Weight.fromOneRm(oneRm, 0.7)),
            ExerciseSet(reps: 1, sets: 1, weight: Weight.fromOneRm(oneRm, 0.75)),
            ExerciseSet(reps: 1, sets: 1, weight: Weight.fromOneRm(oneRm, 0.8)),
            if (isDone)
              repsDone.fold(
                  () => AmrapExerciseSet(
                      reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.85), isDone: isDone),
                  (a) => AmrapExerciseSet(
                      reps: a, sets: 1, weight: Weight.fromOneRm(oneRm, 0.85), isDone: isDone))
            else
              AmrapExerciseSet(
                  reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.85), isDone: isDone),
          ];
        case 4:
          return [
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.5)),
            ExerciseSet(reps: 3, sets: 1, weight: Weight.fromOneRm(oneRm, 0.6)),
            ExerciseSet(reps: 2, sets: 1, weight: Weight.fromOneRm(oneRm, 0.7)),
            ExerciseSet(reps: 1, sets: 1, weight: Weight.fromOneRm(oneRm, 0.75)),
            ExerciseSet(reps: 1, sets: 1, weight: Weight.fromOneRm(oneRm, 0.8)),
            ExerciseSet(reps: 1, sets: 1, weight: Weight.fromOneRm(oneRm, 0.85)),
            if (isDone)
              repsDone.fold(
                  () => AmrapExerciseSet(
                      reps: 3, sets: 1, weight: Weight.fromOneRm(oneRm, 0.9), isDone: isDone),
                  (a) => AmrapExerciseSet(
                      reps: a, sets: 1, weight: Weight.fromOneRm(oneRm, 0.9), isDone: isDone))
            else
              AmrapExerciseSet(
                  reps: 3, sets: 1, weight: Weight.fromOneRm(oneRm, 0.9), isDone: isDone),
          ];
        default:
          throw const UnexpectedError();
      }
    },
  );
}

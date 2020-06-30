import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/core/value_objects/month.dart';
import 'package:power_progress/domain/core/value_objects/one_rm.dart';
import 'package:power_progress/domain/workout/exercise_set.dart';
import 'package:power_progress/domain/workout/value_objects/weight.dart';
import 'package:power_progress/domain/workout/workout.dart';
import 'package:power_progress/domain/workout/workout_failure.dart';

class DeloadWorkout extends Workout {
  DeloadWorkout({
    @required Month month,
    @required OneRm oneRm,
    @required bool isDone,
    @required Option<int> workoutDoneId,
  }) : super(
          month: month,
          oneRm: oneRm,
          isDone: isDone,
          exerciseSets: _getExerciseSets(month, oneRm),
          workoutDoneId: workoutDoneId,
        );
}

List<ExerciseSet> _getExerciseSets(Month month, OneRm oneRm) {
  return month.moduloMonthNumber.fold(
    (l) => throw const UnexpectedError(),
    (r) {
      switch (r) {
        case 1:
          return [
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.4)),
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.5)),
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.6)),
          ];
        case 2:
          return [
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.4)),
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.5)),
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.6)),
          ];
        case 3:
          return [
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.4)),
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.5)),
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.6)),
          ];
        case 4:
          return [
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.4)),
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.5)),
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.6)),
          ];
        default:
          throw const UnexpectedError();
      }
    },
  );
}

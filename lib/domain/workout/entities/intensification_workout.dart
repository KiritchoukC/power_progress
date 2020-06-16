import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';

import 'package:power_progress/domain/workout/entities/exercise_set.dart';
import 'package:power_progress/domain/workout/entities/value_objects/weight.dart';
import 'package:power_progress/domain/workout/entities/workout.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';

class IntensificationWorkout extends Workout {
  IntensificationWorkout({
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
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.55)),
            ExerciseSet(reps: 5, sets: 1, weight: Weight.fromOneRm(oneRm, 0.625)),
            ExerciseSet(reps: 10, sets: 3, weight: Weight.fromOneRm(oneRm, 0.675)),
          ];
        case 2:
          return [
            ExerciseSet(reps: 3, sets: 1, weight: Weight.fromOneRm(oneRm, 0.6)),
            ExerciseSet(reps: 3, sets: 1, weight: Weight.fromOneRm(oneRm, 0.675)),
            ExerciseSet(reps: 8, sets: 3, weight: Weight.fromOneRm(oneRm, 0.725)),
          ];
        case 3:
          return [
            ExerciseSet(reps: 2, sets: 1, weight: Weight.fromOneRm(oneRm, 0.65)),
            ExerciseSet(reps: 2, sets: 1, weight: Weight.fromOneRm(oneRm, 0.725)),
            ExerciseSet(reps: 5, sets: 4, weight: Weight.fromOneRm(oneRm, 0.775)),
          ];
        case 4:
          return [
            ExerciseSet(reps: 1, sets: 1, weight: Weight.fromOneRm(oneRm, 0.7)),
            ExerciseSet(reps: 1, sets: 1, weight: Weight.fromOneRm(oneRm, 0.775)),
            ExerciseSet(reps: 3, sets: 5, weight: Weight.fromOneRm(oneRm, 0.825)),
          ];
        default:
          throw const UnexpectedError();
      }
    },
  );
}

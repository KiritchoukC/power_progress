import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/domain/errors.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/domain/workout/exercise_set.dart';
import 'package:power_progress/domain/workout/value_objects/weight.dart';
import 'package:power_progress/domain/workout/workout.dart';

class AccumulationWorkout extends Workout {
  AccumulationWorkout({
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

  @override
  WeekEnum get week => const WeekEnum.accumulation();
}

List<ExerciseSet> _getExerciseSets(Month month, OneRm oneRm) {
  switch (month.moduloMonthNumber) {
    case 1:
      return [ExerciseSet(reps: 10, sets: 5, weight: Weight.fromOneRm(oneRm, 0.6))];
    case 2:
      return [ExerciseSet(reps: 8, sets: 5, weight: Weight.fromOneRm(oneRm, 0.65))];
    case 3:
      return [ExerciseSet(reps: 5, sets: 6, weight: Weight.fromOneRm(oneRm, 0.7))];
    case 4:
      return [ExerciseSet(reps: 3, sets: 7, weight: Weight.fromOneRm(oneRm, 0.75))];
    default:
      throw UnexpectedValueError(none());
  }
}

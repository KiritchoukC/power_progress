import 'package:flutter/foundation.dart';

import 'exercise_set.dart';
import 'value_objects/weight.dart';
import 'workout_failure.dart';

class AccumulationWorkout {
  final int month;
  final double oneRm;
  final List<ExerciseSet> exerciseSets;
  final bool isDone;

  factory AccumulationWorkout({
    @required int month,
    @required double oneRm,
  }) {
    assert(month != null);
    assert(oneRm != null);
    return AccumulationWorkout._(
      month: month,
      oneRm: oneRm,
      exerciseSets: _getExerciseSets(month, oneRm),
      isDone: true,
    );
  }

  const AccumulationWorkout._({
    @required this.month,
    @required this.oneRm,
    @required this.exerciseSets,
    @required this.isDone,
  });
}

List<ExerciseSet> _getExerciseSets(int month, double oneRm) {
  switch (month) {
    case 1:
      return [ExerciseSet(reps: 10, sets: 5, weight: Weight(oneRm * 0.6))];
    case 2:
      return [ExerciseSet(reps: 8, sets: 5, weight: Weight(oneRm * 0.65))];
    case 3:
      return [ExerciseSet(reps: 5, sets: 6, weight: Weight(oneRm * 0.7))];
    case 4:
      return [ExerciseSet(reps: 3, sets: 7, weight: Weight(oneRm * 0.75))];
    default:
      throw const UnexpectedError();
  }
}

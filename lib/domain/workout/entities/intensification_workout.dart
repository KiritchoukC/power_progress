import 'package:flutter/foundation.dart';

import 'exercise_set.dart';
import 'value_objects/weight.dart';
import 'workout_failure.dart';

class IntensificationWorkout {
  final int month;
  final double oneRm;
  final List<ExerciseSet> exerciseSets;
  final bool isDone;

  factory IntensificationWorkout({
    @required int month,
    @required double oneRm,
    @required bool isDone,
  }) {
    assert(month != null);
    assert(oneRm != null);
    return IntensificationWorkout._(
      month: month,
      oneRm: oneRm,
      exerciseSets: _getExerciseSets(month, oneRm),
      isDone: isDone,
    );
  }

  const IntensificationWorkout._({
    @required this.month,
    @required this.oneRm,
    @required this.exerciseSets,
    @required this.isDone,
  });
}

List<ExerciseSet> _getExerciseSets(int month, double oneRm) {
  switch (month) {
    case 1:
      return [
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.55)),
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.625)),
        ExerciseSet(reps: 10, sets: 3, weight: Weight(oneRm * 0.675)),
      ];
    case 2:
      return [
        ExerciseSet(reps: 3, sets: 1, weight: Weight(oneRm * 0.6)),
        ExerciseSet(reps: 3, sets: 1, weight: Weight(oneRm * 0.675)),
        ExerciseSet(reps: 8, sets: 3, weight: Weight(oneRm * 0.725)),
      ];
    case 3:
      return [
        ExerciseSet(reps: 2, sets: 1, weight: Weight(oneRm * 0.65)),
        ExerciseSet(reps: 2, sets: 1, weight: Weight(oneRm * 0.725)),
        ExerciseSet(reps: 5, sets: 4, weight: Weight(oneRm * 0.775)),
      ];
    case 4:
      return [
        ExerciseSet(reps: 1, sets: 1, weight: Weight(oneRm * 0.7)),
        ExerciseSet(reps: 1, sets: 1, weight: Weight(oneRm * 0.775)),
        ExerciseSet(reps: 3, sets: 5, weight: Weight(oneRm * 0.825)),
      ];
    default:
      throw const UnexpectedError();
  }
}

import 'package:flutter/foundation.dart';

import 'exercise_set.dart';
import 'value_objects/weight.dart';
import 'workout_failure.dart';

class DeloadWorkout {
  final int month;
  final double oneRm;
  final List<ExerciseSet> exerciseSets;
  final bool isDone;

  factory DeloadWorkout({
    @required int month,
    @required double oneRm,
    @required bool isDone,
  }) {
    assert(month != null);
    assert(oneRm != null);
    return DeloadWorkout._(
      month: month,
      oneRm: oneRm,
      exerciseSets: _getExerciseSets(month, oneRm),
      isDone: isDone,
    );
  }

  const DeloadWorkout._({
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
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.4)),
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.5)),
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.6)),
      ];
    case 2:
      return [
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.4)),
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.5)),
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.6)),
      ];
    case 3:
      return [
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.4)),
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.5)),
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.6)),
      ];
    case 4:
      return [
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.4)),
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.5)),
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.6)),
      ];
    default:
      throw const UnexpectedError();
  }
}

import 'package:flutter/foundation.dart';

import 'exercise_set.dart';
import 'value_objects/weight.dart';
import 'workout_failure.dart';

class RealizationWorkout {
  final int month;
  final double oneRm;
  final List<ExerciseSet> exerciseSets;
  final bool isDone;
  final int repsDone;

  factory RealizationWorkout({
    @required int month,
    @required double oneRm,
    @required bool isDone,
  }) {
    assert(month != null);
    assert(oneRm != null);
    return RealizationWorkout._(
      month: month,
      oneRm: oneRm,
      exerciseSets: _getExerciseSets(month, oneRm),
      isDone: isDone,
      repsDone: 0,
    );
  }

  const RealizationWorkout._({
    @required this.month,
    @required this.oneRm,
    @required this.exerciseSets,
    @required this.isDone,
    @required this.repsDone,
  });
}

List<ExerciseSet> _getExerciseSets(int month, double oneRm) {
  switch (month) {
    case 1:
      return [
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.5)),
        ExerciseSet(reps: 3, sets: 1, weight: Weight(oneRm * 0.6)),
        ExerciseSet(reps: 1, sets: 1, weight: Weight(oneRm * 0.7)),
        ExerciseSet(reps: 10, sets: 1, weight: Weight(oneRm * 0.75), isAmrap: true),
      ];
    case 2:
      return [
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.5)),
        ExerciseSet(reps: 3, sets: 1, weight: Weight(oneRm * 0.6)),
        ExerciseSet(reps: 2, sets: 1, weight: Weight(oneRm * 0.7)),
        ExerciseSet(reps: 1, sets: 1, weight: Weight(oneRm * 0.75)),
        ExerciseSet(reps: 8, sets: 1, weight: Weight(oneRm * 0.8), isAmrap: true),
      ];
    case 3:
      return [
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.5)),
        ExerciseSet(reps: 3, sets: 1, weight: Weight(oneRm * 0.6)),
        ExerciseSet(reps: 2, sets: 1, weight: Weight(oneRm * 0.7)),
        ExerciseSet(reps: 1, sets: 1, weight: Weight(oneRm * 0.75)),
        ExerciseSet(reps: 1, sets: 1, weight: Weight(oneRm * 0.8)),
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.85), isAmrap: true),
      ];
    case 4:
      return [
        ExerciseSet(reps: 5, sets: 1, weight: Weight(oneRm * 0.5)),
        ExerciseSet(reps: 3, sets: 1, weight: Weight(oneRm * 0.6)),
        ExerciseSet(reps: 2, sets: 1, weight: Weight(oneRm * 0.7)),
        ExerciseSet(reps: 1, sets: 1, weight: Weight(oneRm * 0.75)),
        ExerciseSet(reps: 1, sets: 1, weight: Weight(oneRm * 0.8)),
        ExerciseSet(reps: 1, sets: 1, weight: Weight(oneRm * 0.85)),
        ExerciseSet(reps: 3, sets: 1, weight: Weight(oneRm * 0.9), isAmrap: true),
      ];
    default:
      throw const UnexpectedError();
  }
}

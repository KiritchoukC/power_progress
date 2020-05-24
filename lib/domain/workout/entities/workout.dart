import 'package:flutter/foundation.dart';

import 'exercise_set.dart';

abstract class Workout {
  final int month;
  final double oneRm;
  final List<ExerciseSet> exerciseSets;
  final bool isDone;
  final int workoutDoneId;

  Workout({
    @required this.month,
    @required this.oneRm,
    @required this.isDone,
    @required this.exerciseSets,
    @required this.workoutDoneId,
  })  : assert(month != null),
        assert(oneRm != null);
}

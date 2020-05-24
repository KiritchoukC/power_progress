import 'package:flutter/foundation.dart';

import 'exercise_set.dart';
import 'value_objects/weight.dart';

class AmrapExerciseSet extends ExerciseSet {
  final bool isDone;

  const AmrapExerciseSet({
    @required int sets,
    @required int reps,
    @required Weight weight,
    this.isDone = false,
  }) : super(sets: sets, reps: reps, weight: weight);
}

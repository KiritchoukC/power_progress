import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/workout/exercise_set.dart';
import 'package:power_progress/domain/workout/value_objects/weight.dart';

class AmrapExerciseSet extends ExerciseSet {
  final bool isDone;

  const AmrapExerciseSet({
    @required int sets,
    @required int reps,
    @required Weight weight,
    this.isDone = false,
  }) : super(
          sets: sets,
          reps: reps,
          weight: weight,
          isAmrap: true,
        );
}

import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/workout/entities/exercise_set.dart';

abstract class Workout {
  final Month month;
  final OneRm oneRm;
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

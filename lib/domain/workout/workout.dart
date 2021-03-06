import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/domain/workout/exercise_set.dart';

abstract class Workout {
  final Month month;
  final OneRm oneRm;
  final List<ExerciseSet> exerciseSets;
  final bool isDone;
  final Option<int> workoutDoneId;

  Workout({
    @required this.month,
    @required this.oneRm,
    @required this.isDone,
    @required this.exerciseSets,
    @required this.workoutDoneId,
  })  : assert(month != null),
        assert(oneRm != null);

  WeekEnum get week;
}

class WorkoutHelper {
  static int getTargetReps(Month month) {
    switch (month.moduloMonthNumber) {
      case 1:
        return 10;
      case 2:
        return 8;
      case 3:
        return 5;
      case 4:
        return 3;
      default:
        throw Error();
    }
  }
}

import 'package:flutter/foundation.dart';

import '../../shared/entities/weeks.dart';
import 'exercise_set.dart';

class Workout {
  final int month;
  final double oneRm;
  final double incrementation;
  final Map<Weeks, List<ExerciseSet>> weekSets;

  Workout({
    @required this.month,
    @required this.oneRm,
    @required this.incrementation,
    @required this.weekSets,
  });
}

import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/workout/entities/week_set.dart';

class Workout {
  final int month;
  final double oneRm;
  final List<WeekSet> weekSets;

  Workout({
    @required this.month,
    @required this.oneRm,
    @required this.weekSets,
  });
}

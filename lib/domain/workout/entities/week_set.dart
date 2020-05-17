import 'package:flutter/foundation.dart';

import '../../core/entities/weeks.dart';
import 'exercise_set.dart';

class WeekSet {
  final Weeks week;
  final List<ExerciseSet> sets;
  final bool isDone;

  WeekSet({
    @required this.week,
    @required this.sets,
    @required this.isDone,
  });
}

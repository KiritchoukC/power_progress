import 'package:flutter/foundation.dart';

import '../../core/entities/week_enum.dart';

class WorkoutDone {
  final int id;
  final int exerciseId;
  final int month;
  final WeekEnum week;
  final int repsDone;

  WorkoutDone({
    @required this.id,
    @required this.exerciseId,
    @required this.month,
    @required this.week,
    @required this.repsDone,
  });
}

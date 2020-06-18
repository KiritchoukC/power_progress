import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';

import 'package:power_progress/domain/core/entities/week_enum.dart';

class WorkoutDone {
  final int id;
  final int exerciseId;
  final Month month;
  final WeekEnum week;
  final Option<int> repsDone;

  WorkoutDone({
    @required this.id,
    @required this.exerciseId,
    @required this.month,
    @required this.week,
    @required this.repsDone,
  });
}

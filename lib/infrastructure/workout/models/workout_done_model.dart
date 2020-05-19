import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import '../../../domain/core/entities/weeks.dart';

part 'workout_done_model.g.dart';

@HiveType(typeId: 0)
class WorkoutDoneModel {
  @HiveField(0)
  int exerciseId;
  @HiveField(1)
  int month;
  @HiveField(2)
  int weekIndex;

  WorkoutDoneModel({
    @required this.exerciseId,
    @required this.month,
    @required WeekEnum week,
  }) {
    weekIndex = week.index;
  }
}

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/workout_done.dart';

part 'workout_done_model.g.dart';

@HiveType(typeId: 1)
class WorkoutDoneModel {
  @HiveField(0)
  int id;
  @HiveField(1)
  int exerciseId;
  @HiveField(2)
  int month;
  @HiveField(3)
  int weekIndex;
  @HiveField(4)
  int repsDone;

  WorkoutDoneModel({
    @required this.exerciseId,
    @required this.month,
    @required this.weekIndex,
    @required this.repsDone,
  });

  static WorkoutDone toEntity(WorkoutDoneModel model) {
    return WorkoutDone(
      id: model.id,
      exerciseId: model.exerciseId,
      month: model.month,
      week: WeekEnum.values[model.weekIndex],
      repsDone: model.repsDone,
    );
  }
}

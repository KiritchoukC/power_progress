import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import '../../../domain/core/entities/weeks.dart';
import '../../../domain/workout/entities/workout_done.dart';

part 'workout_done_model.g.dart';

@HiveType(typeId: 1)
class WorkoutDoneModel {
  @HiveField(0)
  int exerciseId;
  @HiveField(1)
  int month;
  @HiveField(2)
  int weekIndex;
  @HiveField(3)
  int repsDone;

  WorkoutDoneModel({
    @required this.exerciseId,
    @required this.month,
    @required this.weekIndex,
    @required this.repsDone,
  });

  static WorkoutDone toEntity(WorkoutDoneModel model) {
    return WorkoutDone(
      month: model.month,
      week: WeekEnum.values[model.weekIndex],
      repsDone: model.repsDone,
    );
  }
}

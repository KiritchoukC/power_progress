import 'package:flutter/foundation.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';

import 'package:power_progress/domain/workout/entities/workout_done.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';

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

  factory WorkoutDoneModel.toModel(
      int exerciseId, Month month, WeekEnum week, Option<int> repsDone) {
    return WorkoutDoneModel(
      exerciseId: exerciseId,
      month: month.getOrCrash(),
      weekIndex: week.index(),
      repsDone: repsDone.getOrElse(() => -1),
    );
  }

  static WorkoutDone toEntity(WorkoutDoneModel model) {
    return WorkoutDone(
      id: model.id,
      exerciseId: model.exerciseId,
      month: Month(model.month),
      week: WeekEnumHelper.fromInt(model.weekIndex).getOrElse(() => throw const UnexpectedError()),
      repsDone: some(model.repsDone),
    );
  }
}

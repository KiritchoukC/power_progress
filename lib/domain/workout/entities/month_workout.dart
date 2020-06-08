import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/accumulation_workout.dart';
import 'package:power_progress/domain/workout/entities/deload_workout.dart';
import 'package:power_progress/domain/workout/entities/intensification_workout.dart';
import 'package:power_progress/domain/workout/entities/realization_workout.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';

class MonthWorkout {
  final Month month;
  final OneRm oneRm;
  final AccumulationWorkout accumulationWorkout;
  final IntensificationWorkout intensificationWorkout;
  final RealizationWorkout realizationWorkout;
  final DeloadWorkout deloadWorkout;

  MonthWorkout({
    @required this.month,
    @required this.oneRm,
    @required this.accumulationWorkout,
    @required this.intensificationWorkout,
    @required this.realizationWorkout,
    @required this.deloadWorkout,
  });

  bool validatable(WeekEnum week) {
    switch (week) {
      case WeekEnum.accumulation:
        return true;
      case WeekEnum.intensification:
        return accumulationWorkout.isDone;
      case WeekEnum.realization:
        return intensificationWorkout.isDone;
      case WeekEnum.deload:
        return realizationWorkout.isDone;
      default:
        throw const UnexpectedError();
    }
  }

  bool invalidatable(WeekEnum week) {
    switch (week) {
      case WeekEnum.accumulation:
        return !intensificationWorkout.isDone;
      case WeekEnum.intensification:
        return !realizationWorkout.isDone;
      case WeekEnum.realization:
        return !deloadWorkout.isDone;
      case WeekEnum.deload:
        return true;
      default:
        throw const UnexpectedError();
    }
  }
}

import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/accumulation_workout.dart';
import 'package:power_progress/domain/workout/entities/deload_workout.dart';
import 'package:power_progress/domain/workout/entities/intensification_workout.dart';
import 'package:power_progress/domain/workout/entities/realization_workout.dart';

class MonthWorkout {
  final Month month;
  final OneRm oneRm;
  final AccumulationWorkout accumulationWorkout;
  final IntensificationWorkout intensificationWorkout;
  final RealizationWorkout realizationWorkout;
  final DeloadWorkout deloadWorkout;
  final bool isPreviousDeloadDone;
  final bool isNextAccumulationDone;

  MonthWorkout({
    @required this.month,
    @required this.oneRm,
    @required this.accumulationWorkout,
    @required this.intensificationWorkout,
    @required this.realizationWorkout,
    @required this.deloadWorkout,
    @required this.isPreviousDeloadDone,
    @required this.isNextAccumulationDone,
  });

  bool validatable(WeekEnum week) {
    return week.when(
      // only if it's the first week or last week's deload is done
      accumulation: () => isPreviousDeloadDone,
      intensification: () => accumulationWorkout.isDone,
      realization: () => intensificationWorkout.isDone,
      deload: () => realizationWorkout.isDone,
    );
  }

  bool invalidatable(WeekEnum week) {
    return week.when(
      accumulation: () => !intensificationWorkout.isDone,
      intensification: () => !realizationWorkout.isDone,
      realization: () => !deloadWorkout.isDone,
      // only if next week's accumulation is not done
      deload: () => !isNextAccumulationDone,
    );
  }
}

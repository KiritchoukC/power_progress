import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/domain/workout/accumulation_workout.dart';
import 'package:power_progress/domain/workout/deload_workout.dart';
import 'package:power_progress/domain/workout/intensification_workout.dart';
import 'package:power_progress/domain/workout/realization_workout.dart';
import 'package:power_progress/domain/workout/workout.dart';
import 'package:power_progress/domain/workout/workout_done.dart';

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

  factory MonthWorkout.generate(
    int exerciseId,
    Month month,
    List<WorkoutDone> workoutsDone,
    OneRm oneRm,
  ) {
    Option<WorkoutDone> _getWorkoutDone(int exerciseId, Month month, WeekEnum week) {
      if (workoutsDone.isEmpty) return none();

      final workoutDone = workoutsDone.firstWhere(
        (x) =>
            x.month.getOrCrash() == month.getOrCrash() &&
            x.week == week &&
            x.exerciseId == exerciseId,
        orElse: () => null,
      );

      return workoutDone == null ? none() : some(workoutDone);
    }

    Workout _getWorkout(WeekEnum week, OneRm oneRm) {
      final workoutDone = _getWorkoutDone(exerciseId, month, week);

      return week.when(
        accumulation: () => AccumulationWorkout(
          month: month,
          oneRm: oneRm,
          isDone: workoutDone.isSome(),
          workoutDoneId: workoutDone.fold(() => none(), (a) => some(a.id)),
        ),
        intensification: () => IntensificationWorkout(
          month: month,
          oneRm: oneRm,
          isDone: workoutDone.isSome(),
          workoutDoneId: workoutDone.fold(() => none(), (a) => some(a.id)),
        ),
        realization: () => RealizationWorkout(
          month: month,
          oneRm: oneRm,
          isDone: workoutDone.isSome(),
          workoutDoneId: workoutDone.fold(() => none(), (a) => some(a.id)),
          repsDone: workoutDone.fold(() => none(), (a) => a.repsDone),
        ),
        deload: () => DeloadWorkout(
          month: month,
          oneRm: oneRm,
          isDone: workoutDone.isSome(),
          workoutDoneId: workoutDone.fold(() => none(), (a) => some(a.id)),
        ),
      );
    }

    bool _isPreviousDeloadDone() {
      final deloadWorkoutDone = _getWorkoutDone(
        exerciseId,
        Month(month.getOrCrash() - 1),
        const WeekEnum.deload(),
      );
      return deloadWorkoutDone.isSome();
    }

    bool _isNextAccumulationDone() {
      final accumulationWorkoutDone = _getWorkoutDone(
        exerciseId,
        Month(month.getOrCrash() + 1),
        const WeekEnum.accumulation(),
      );
      return accumulationWorkoutDone.isSome();
    }

    return MonthWorkout(
      month: month,
      oneRm: oneRm,
      accumulationWorkout: _getWorkout(
        const WeekEnum.accumulation(),
        oneRm,
      ) as AccumulationWorkout,
      intensificationWorkout: _getWorkout(
        const WeekEnum.intensification(),
        oneRm,
      ) as IntensificationWorkout,
      realizationWorkout: _getWorkout(
        const WeekEnum.realization(),
        oneRm,
      ) as RealizationWorkout,
      deloadWorkout: _getWorkout(
        const WeekEnum.deload(),
        oneRm,
      ) as DeloadWorkout,
      isNextAccumulationDone: _isNextAccumulationDone(),
      isPreviousDeloadDone: month.getOrCrash() == 1 || _isPreviousDeloadDone(),
    );
  }

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

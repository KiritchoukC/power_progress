import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_month.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_week.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_remove.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';

class MarkWorkoutUndone implements UseCase<Unit, WorkoutFailure, MarkWorkoutUndoneParams> {
  final IWorkoutRepository repository;
  final UpdateExerciseNextWeek updateExerciseNextWeek;
  final UpdateExerciseNextMonth updateExerciseNextMonth;
  final OneRmRemove oneRmRemove;

  MarkWorkoutUndone({
    @required this.repository,
    @required this.updateExerciseNextWeek,
    @required this.updateExerciseNextMonth,
    @required this.oneRmRemove,
  })  : assert(repository != null),
        assert(updateExerciseNextWeek != null),
        assert(updateExerciseNextMonth != null),
        assert(oneRmRemove != null);

  @override
  Future<Either<WorkoutFailure, Unit>> call(MarkWorkoutUndoneParams params) async {
    final result = params.id.fold(
      () {},
      (workoutId) async => repository.remove(workoutId),
    );

    await updateExerciseNextWeek(
      UpdateExerciseNextWeekParams(
        exerciseId: params.exerciseId,
        nextWeek: params.week,
      ),
    );

    // if it's the deload week that is being marked undone then the current month become the current on again and not the next one.
    await params.week.maybeWhen(
      deload: () async => updateExerciseNextMonth(
        UpdateExerciseNextMonthParams(
          exerciseId: params.exerciseId,
          nextMonth: params.month,
        ),
      ),
      realization: () async => oneRmRemove(
        OneRmRemoveParams(
          exerciseId: params.exerciseId,
          month: some(params.month.next),
        ),
      ),
      orElse: () {},
    );

    return result;
  }
}

class MarkWorkoutUndoneParams extends Equatable {
  final Option<int> id;
  final int exerciseId;
  final WeekEnum week;
  final Month month;

  const MarkWorkoutUndoneParams({
    @required this.id,
    @required this.exerciseId,
    @required this.week,
    @required this.month,
  });

  @override
  List<Object> get props => [
        id,
        exerciseId,
        week,
        month,
      ];
}

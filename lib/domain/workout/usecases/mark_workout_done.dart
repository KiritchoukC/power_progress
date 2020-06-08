import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_month.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_week.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';

class MarkWorkoutDone implements UseCase<Unit, WorkoutFailure, MarkWorkoutDoneParams> {
  final IWorkoutRepository repository;
  final UpdateExerciseNextWeek updateExerciseNextWeek;
  final UpdateExerciseNextMonth updateExerciseNextMonth;

  MarkWorkoutDone({
    @required this.repository,
    @required this.updateExerciseNextWeek,
    @required this.updateExerciseNextMonth,
  })  : assert(repository != null),
        assert(updateExerciseNextWeek != null),
        assert(updateExerciseNextMonth != null);

  @override
  Future<Either<WorkoutFailure, Unit>> call(MarkWorkoutDoneParams params) async {
    final result =
        repository.markDone(params.exerciseId, params.month, params.week, params.repsDone);

    await updateExerciseNextWeek(
      UpdateExerciseNextWeekParams(
        exerciseId: params.exerciseId,
        nextWeek: params.week.next(),
      ),
    );

    if (params.week == WeekEnum.deload) {
      await updateExerciseNextMonth(
        UpdateExerciseNextMonthParams(
          exerciseId: params.exerciseId,
          nextMonth: params.month.next,
        ),
      );
    }

    return result;
  }
}

class MarkWorkoutDoneParams extends Equatable {
  final int exerciseId;
  final Month month;
  final WeekEnum week;
  final int repsDone;

  const MarkWorkoutDoneParams({
    @required this.exerciseId,
    @required this.month,
    @required this.week,
    @required this.repsDone,
  });

  @override
  List<Object> get props => [exerciseId, month, week, repsDone];
}

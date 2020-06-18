import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_month.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_week.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_upsert.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';

class MarkWorkoutDone implements UseCase<Unit, WorkoutFailure, MarkWorkoutDoneParams> {
  final IWorkoutRepository repository;
  final UpdateExerciseNextWeek updateExerciseNextWeek;
  final UpdateExerciseNextMonth updateExerciseNextMonth;
  final OneRmUpsert oneRmUpsert;

  MarkWorkoutDone({
    @required this.repository,
    @required this.updateExerciseNextWeek,
    @required this.updateExerciseNextMonth,
    @required this.oneRmUpsert,
  })  : assert(repository != null),
        assert(updateExerciseNextWeek != null),
        assert(updateExerciseNextMonth != null),
        assert(oneRmUpsert != null);

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

    await params.week.maybeWhen(
      deload: () async => updateExerciseNextMonth(
        UpdateExerciseNextMonthParams(
          exerciseId: params.exerciseId,
          nextMonth: params.month.next,
        ),
      ),
      //! TODO generate one rm for the next month
      realization: () async => oneRmUpsert(
        OneRmUpsertParams(
          exerciseId: params.exerciseId,
          month: params.month.next,
          oneRm: params.oneRm,
        ),
      ),
      orElse: () {},
    );

    return result;
  }
}

class MarkWorkoutDoneParams extends Equatable {
  final int exerciseId;
  final Month month;
  final WeekEnum week;
  final int repsDone;
  final OneRm oneRm;

  const MarkWorkoutDoneParams({
    @required this.exerciseId,
    @required this.month,
    @required this.week,
    @required this.repsDone,
    @required this.oneRm,
  });

  @override
  List<Object> get props => [
        exerciseId,
        month,
        week,
        repsDone,
        oneRm,
      ];
}

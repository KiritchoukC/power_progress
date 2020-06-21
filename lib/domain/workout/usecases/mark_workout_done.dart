import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_month.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_week.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_generate_and_save.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';

class MarkWorkoutDone implements UseCase<Unit, WorkoutFailure, MarkWorkoutDoneParams> {
  final IWorkoutRepository repository;
  final UpdateExerciseNextWeek updateExerciseNextWeek;
  final UpdateExerciseNextMonth updateExerciseNextMonth;
  final OneRmGenerateAndSave oneRmGenerateAndSave;

  MarkWorkoutDone({
    @required this.repository,
    @required this.updateExerciseNextWeek,
    @required this.updateExerciseNextMonth,
    @required this.oneRmGenerateAndSave,
  })  : assert(repository != null),
        assert(updateExerciseNextWeek != null),
        assert(updateExerciseNextMonth != null),
        assert(oneRmGenerateAndSave != null);

  @override
  Future<Either<WorkoutFailure, Unit>> call(MarkWorkoutDoneParams params) async =>
      repository.markDone(params.exerciseId, params.month, params.week, params.repsDone);
}

class MarkWorkoutDoneParams extends Equatable {
  final int exerciseId;
  final Month month;
  final WeekEnum week;
  final Option<int> repsDone;
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

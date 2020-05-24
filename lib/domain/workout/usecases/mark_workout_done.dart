import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../../core/usecases/usecase.dart';
import '../../core/entities/week_enum.dart';
import '../../exercise/usecases/update_exercise_week.dart';
import '../entities/workout_failure.dart';
import '../repositories/i_workout_repository.dart';

class MarkWorkoutDone implements UseCase<Unit, WorkoutFailure, MarkWorkoutDoneParams> {
  final IWorkoutRepository repository;
  final UpdateExerciseWeek updateExerciseWeek;

  MarkWorkoutDone({
    @required this.repository,
    @required this.updateExerciseWeek,
  });

  @override
  Future<Either<WorkoutFailure, Unit>> call(MarkWorkoutDoneParams params) async {
    final result =
        repository.markDone(params.exerciseId, params.month, params.week, params.repsDone);

    await updateExerciseWeek(
      UpdateExerciseWeekParams(
        exerciseId: params.exerciseId,
        week: params.week,
      ),
    );

    return result;
  }
}

class MarkWorkoutDoneParams extends Equatable {
  final int exerciseId;
  final int month;
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

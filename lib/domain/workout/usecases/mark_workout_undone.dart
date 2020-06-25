import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';

class MarkWorkoutUndone implements UseCase<Unit, WorkoutFailure, MarkWorkoutUndoneParams> {
  final IWorkoutRepository repository;

  MarkWorkoutUndone({
    @required this.repository,
  }) : assert(repository != null);

  @override
  Future<Either<WorkoutFailure, Unit>> call(MarkWorkoutUndoneParams params) async {
    final result = params.id.fold(
      () {},
      (workoutId) async => repository.remove(workoutId),
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

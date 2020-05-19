import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../../core/usecases/usecase.dart';
import '../../core/entities/weeks.dart';
import '../entities/workout_failure.dart';
import '../repositories/i_workout_repository.dart';

class MarkWorkoutDone implements UseCase<Unit, WorkoutFailure, MarkWorkoutDoneParams> {
  final IWorkoutRepository repository;

  MarkWorkoutDone({@required this.repository});

  @override
  Future<Either<WorkoutFailure, Unit>> call(MarkWorkoutDoneParams params) async =>
      repository.markDone(params.exerciseId, params.month, params.week);
}

class MarkWorkoutDoneParams extends Equatable {
  final int exerciseId;
  final int month;
  final WeekEnum week;

  const MarkWorkoutDoneParams({
    @required this.exerciseId,
    @required this.month,
    @required this.week,
  });

  @override
  List<Object> get props => [exerciseId, month, week];
}

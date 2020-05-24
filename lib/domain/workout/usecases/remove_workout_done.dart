import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../../core/usecases/usecase.dart';
import '../entities/workout_failure.dart';
import '../repositories/i_workout_repository.dart';

class RemoveWorkoutDone implements UseCase<Unit, WorkoutFailure, RemoveWorkoutDoneParams> {
  final IWorkoutRepository repository;

  RemoveWorkoutDone({@required this.repository});

  @override
  Future<Either<WorkoutFailure, Unit>> call(RemoveWorkoutDoneParams params) async =>
      repository.remove(params.exerciseId);
}

class RemoveWorkoutDoneParams extends Equatable {
  final int exerciseId;

  const RemoveWorkoutDoneParams({
    @required this.exerciseId,
  });

  @override
  List<Object> get props => [exerciseId];
}

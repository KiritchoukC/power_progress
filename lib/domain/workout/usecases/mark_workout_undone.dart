import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../../core/usecases/usecase.dart';
import '../entities/workout_failure.dart';
import '../repositories/i_workout_repository.dart';

class MarkWorkoutUndone implements UseCase<Unit, WorkoutFailure, MarkWorkoutUndoneParams> {
  final IWorkoutRepository repository;

  MarkWorkoutUndone({@required this.repository});

  @override
  Future<Either<WorkoutFailure, Unit>> call(MarkWorkoutUndoneParams params) async =>
      repository.remove(params.id);
}

class MarkWorkoutUndoneParams extends Equatable {
  final int id;

  const MarkWorkoutUndoneParams({
    @required this.id,
  });

  @override
  List<Object> get props => [id];
}

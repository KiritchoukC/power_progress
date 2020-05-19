import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/core/entities/weeks.dart';
import 'package:dartz/dartz.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';
import 'package:power_progress/infrastructure/workout/datasources/i_workout_datasource.dart';

class WorkoutRepository implements IWorkoutRepository {
  final IWorkoutDatasource datasource;

  WorkoutRepository({@required this.datasource}) : assert(datasource != null);

  @override
  Future<Either<WorkoutFailure, List<Map<int, WeekEnum>>>> getWorkoutsDone(int exerciseId) async {
    try {
      return right(await datasource.getWorkoutsDone(exerciseId));
    } on Exception {
      return left(const WorkoutFailure.storageError());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> markDone(int exerciseId, int month, WeekEnum week) async {
    try {
      return right(await datasource.markDone(exerciseId, month, week));
    } on Exception {
      return left(const WorkoutFailure.storageError());
    }
  }
}

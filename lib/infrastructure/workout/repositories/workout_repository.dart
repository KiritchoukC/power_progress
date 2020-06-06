import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/workout_done.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';
import 'package:power_progress/infrastructure/workout/datasources/i_workout_datasource.dart';
import 'package:power_progress/infrastructure/workout/models/workout_done_model.dart';

class WorkoutRepository implements IWorkoutRepository {
  final IWorkoutDatasource datasource;

  WorkoutRepository({@required this.datasource}) : assert(datasource != null);

  @override
  Future<Either<WorkoutFailure, List<WorkoutDone>>> getWorkoutsDone(int exerciseId) async {
    try {
      final models = await datasource.getWorkoutsDone(exerciseId);

      return right(models.map(WorkoutDoneModel.toEntity).toList());
    } on Exception {
      return left(const WorkoutFailure.storageError());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> markDone(
      int exerciseId, int month, WeekEnum week, int repsDone) async {
    try {
      return right(await datasource.markDone(exerciseId, month, week, repsDone));
    } on Exception {
      return left(const WorkoutFailure.storageError());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> remove(int id) async {
    try {
      return right(await datasource.remove(id));
    } on Exception {
      return left(const WorkoutFailure.storageError());
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';
import 'package:power_progress/infrastructure/exercise/datasources/i_exercise_datasource.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';

class ExerciseRepository implements IExerciseRepository {
  final IExerciseDatasource datasource;

  ExerciseRepository({@required this.datasource}) : assert(datasource != null);

  @override
  Future<Either<ExerciseFailure, Unit>> add(Exercise exercise) async {
    try {
      final model = ExerciseModel.fromEntity(exercise);
      await datasource.add(model);
      return right(unit);
    } on Exception {
      return left(const ExerciseFailure.storageError());
    }
  }

  @override
  Future<Either<ExerciseFailure, List<Exercise>>> get() async {
    try {
      final models = await datasource.exercises;
      return right(models.map(ExerciseModel.toEntity).toList());
    } on Exception {
      return left(const ExerciseFailure.storageError());
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> remove(List<int> ids) async {
    try {
      await datasource.remove(ids);
      return right(unit);
    } on Exception {
      return left(const ExerciseFailure.storageError());
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> updateNextWeek(int exerciseId, WeekEnum nextWeek) async {
    try {
      await datasource.updateNextWeek(exerciseId, nextWeek);
      return right(unit);
    } on Exception {
      return left(const ExerciseFailure.storageError());
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> updateNextMonth(int exerciseId, int nextMonth) async {
    try {
      await datasource.updateNextMonth(exerciseId, nextMonth);
      return right(unit);
    } on Exception {
      return left(const ExerciseFailure.storageError());
    }
  }
}

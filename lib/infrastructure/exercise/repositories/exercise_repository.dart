import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/shared/common_failure.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/exercise_failure.dart';
import 'package:power_progress/domain/exercise/i_exercise_repository.dart';
import 'package:power_progress/infrastructure/exercise/datasources/i_exercise_datasource.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';

class ExerciseRepository implements IExerciseRepository {
  final IExerciseDatasource datasource;

  ExerciseRepository({@required this.datasource}) : assert(datasource != null);

  @override
  Future<Either<ExerciseFailure, int>> add(Exercise exercise) async {
    try {
      final model = ExerciseModel.fromEntity(exercise);
      return right(await datasource.add(model));
    } on Exception {
      return left(const ExerciseFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<ExerciseFailure, List<Exercise>>> get() async {
    try {
      final models = await datasource.exercises;
      return right(models.map(ExerciseModel.toEntity).toList());
    } on Exception {
      return left(const ExerciseFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> remove(List<int> ids) async {
    try {
      await datasource.remove(ids);
      return right(unit);
    } on Exception {
      return left(const ExerciseFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> updateNextWeek(int exerciseId, WeekEnum nextWeek) async {
    try {
      await datasource.updateNextWeek(exerciseId, nextWeek);
      return right(unit);
    } on Exception {
      return left(const ExerciseFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> updateNextMonth(int exerciseId, Month nextMonth) async {
    try {
      await datasource.updateNextMonth(exerciseId, nextMonth);
      return right(unit);
    } on Exception {
      return left(const ExerciseFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<ExerciseFailure, Option<Exercise>>> getById(int exerciseId) async {
    try {
      final modelOption = await datasource.getById(exerciseId);

      return modelOption.fold(
        () => right(none()),
        (model) => right(some(ExerciseModel.toEntity(model))),
      );
    } on Exception {
      return left(const ExerciseFailure.common(CommonFailure.storageError()));
    }
  }
}

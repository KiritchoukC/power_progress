import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/exercise/entities/exercise.dart';
import '../../../domain/exercise/entities/exercise_failure.dart';
import '../../../domain/exercise/repositories/i_exercise_repository.dart';
import '../datasources/i_exercise_datasource.dart';
import '../models/exercise_model.dart';

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
}

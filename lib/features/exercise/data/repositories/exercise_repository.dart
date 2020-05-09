import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../domain/entities/exercise.dart';
import '../../domain/entities/exercise_failure.dart';
import '../../domain/repositories/i_exercise_repository.dart';
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
      final models = await datasource.get();
      return right(models.map(ExerciseModel.toEntity).toList());
    } on Exception {
      return left(const ExerciseFailure.storageError());
    }
  }
}

import 'package:flutter/foundation.dart';

import '../../domain/entities/exercise.dart';
import '../../domain/repositories/i_exercise_repository.dart';
import '../datasources/i_exercise_datasource.dart';
import '../models/exercise_model.dart';

class ExerciseRepository implements IExerciseRepository {
  final IExerciseDatasource datasource;

  ExerciseRepository({@required this.datasource}) : assert(datasource != null);

  @override
  Future<Exercise> add(Exercise exercise) async {
    final model = ExerciseModel.fromEntity(exercise);
    final addedModel = await datasource.add(model);
    return Future.value(ExerciseModel.toEntity(addedModel));
  }
}

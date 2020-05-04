import 'package:flutter/foundation.dart';

import '../../domain/entities/exercise.dart';
import '../../domain/repositories/i_exercise_repository.dart';
import '../datasources/i_exercise_datasource.dart';

class ExerciseRepository implements IExerciseRepository {
  final IExerciseDatasource datasource;

  ExerciseRepository({@required this.datasource}) : assert(datasource != null);

  @override
  Future<Exercise> add(Exercise exercise) {
    return datasource.add(exercise);
  }
}

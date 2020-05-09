import 'package:dartz/dartz.dart';

import '../models/exercise_model.dart';

abstract class IExerciseDatasource {
  Future<Unit> add(ExerciseModel exercise);
  Future<List<ExerciseModel>> get exercises;
}

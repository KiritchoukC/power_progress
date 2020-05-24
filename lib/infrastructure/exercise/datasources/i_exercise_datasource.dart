import 'package:dartz/dartz.dart';

import '../../../domain/core/entities/week_enum.dart';
import '../models/exercise_model.dart';

abstract class IExerciseDatasource {
  Future<Unit> add(ExerciseModel exercise);
  Future<Unit> remove(List<int> ids);
  Future<List<ExerciseModel>> get exercises;
  Future<Unit> updateWeek(int exerciseId, WeekEnum week);
}

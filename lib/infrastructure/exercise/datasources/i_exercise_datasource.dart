import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';

abstract class IExerciseDatasource {
  Future<Unit> add(ExerciseModel exercise);
  Future<Unit> remove(List<int> ids);
  Future<List<ExerciseModel>> get exercises;
  Future<Unit> updateNextWeek(int exerciseId, WeekEnum nextWeek);
  Future<Unit> updateNextMonth(int exerciseId, int nextMonth);
}

import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/core/value_objects/month.dart';
import 'package:power_progress/domain/core/week_enum.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';

abstract class IExerciseDatasource {
  Future<int> add(ExerciseModel exercise);
  Future<Unit> remove(List<int> ids);
  Future<List<ExerciseModel>> get exercises;
  Future<Unit> updateNextWeek(int exerciseId, WeekEnum nextWeek);
  Future<Unit> updateNextMonth(int exerciseId, Month nextMonth);
  Future<ExerciseModel> getById(int exerciseId);
}

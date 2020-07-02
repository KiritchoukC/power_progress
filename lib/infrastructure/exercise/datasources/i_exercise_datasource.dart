import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/core/value_objects/month.dart';
import 'package:power_progress/domain/core/week_enum.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';

abstract class IExerciseDatasource {
  Future<int> add(ExerciseModel exercise);

  Future<Option<ExerciseModel>> getById(int exerciseId);

  Future<List<ExerciseModel>> get exercises;

  Future<Unit> remove(List<int> ids);

  /// Update next week of the given exercise
  ///
  /// Throw [ItemDoesNotExistError] if there's no exercise with the given exercise identifier
  Future<Unit> updateNextWeek(int exerciseId, WeekEnum nextWeek);

  /// Update next month of the given exercise
  ///
  /// Throw [ItemDoesNotExistError] if there's no exercise with the given exercise identifier
  Future<Unit> updateNextMonth(int exerciseId, Month nextMonth);
}

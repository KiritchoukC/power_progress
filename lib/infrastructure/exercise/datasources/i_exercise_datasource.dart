import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';

abstract class IExerciseDatasource {
  Future<Unit> add(ExerciseModel exercise);
  Future<Unit> remove(List<int> ids);
  Future<List<ExerciseModel>> get exercises;
  Future<Unit> updateNextWeek(int exerciseId, WeekEnum nextWeek);
  Future<Unit> updateNextMonth(int exerciseId, Month nextMonth);
  Future<Unit> updateOneRm(int exerciseId, OneRm oneRm);
}

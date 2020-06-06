import 'package:dartz/dartz.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';

import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/infrastructure/workout/models/workout_done_model.dart';

abstract class IWorkoutDatasource {
  Future<Unit> markDone(int exerciseId, Month month, WeekEnum week, int repsDone);
  Future<List<WorkoutDoneModel>> getWorkoutsDone(int exerciseId);
  Future<Unit> remove(int id);
}

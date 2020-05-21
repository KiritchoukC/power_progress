import 'package:dartz/dartz.dart';

import '../../../domain/core/entities/weeks.dart';
import '../models/workout_done_model.dart';

abstract class IWorkoutDatasource {
  Future<Unit> markDone(int exerciseId, int month, WeekEnum week, int repsDone);
  Future<List<WorkoutDoneModel>> getWorkoutsDone(int exerciseId);
  Future<Unit> remove(int id);
}

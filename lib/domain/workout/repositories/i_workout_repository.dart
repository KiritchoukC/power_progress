import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/workout_done.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';

abstract class IWorkoutRepository {
  Future<Either<WorkoutFailure, Unit>> markDone(
      int exerciseId, int month, WeekEnum week, int repsDone);
  Future<Either<WorkoutFailure, List<WorkoutDone>>> getWorkoutsDone(int exerciseId);
  Future<Either<WorkoutFailure, Unit>> remove(int id);
}

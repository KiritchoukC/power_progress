import 'package:dartz/dartz.dart';

import '../../core/entities/weeks.dart';
import '../entities/workout_done.dart';
import '../entities/workout_failure.dart';

abstract class IWorkoutRepository {
  Future<Either<WorkoutFailure, Unit>> markDone(
      int exerciseId, int month, WeekEnum week, int repsDone);
  Future<Either<WorkoutFailure, List<WorkoutDone>>> getWorkoutsDone(int exerciseId);
  Future<Either<WorkoutFailure, Unit>> remove(int id);
}

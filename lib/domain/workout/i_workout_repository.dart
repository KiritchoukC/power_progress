import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/domain/workout/workout_done.dart';
import 'package:power_progress/domain/workout/workout_failure.dart';

abstract class IWorkoutRepository {
  Future<Either<WorkoutFailure, Unit>> markDone(
      int exerciseId, Month month, WeekEnum week, Option<int> repsDone);
  Future<Either<WorkoutFailure, List<WorkoutDone>>> getWorkoutsDone(int exerciseId);
  Future<Either<WorkoutFailure, Unit>> remove(int id);
  Future<Either<WorkoutFailure, Unit>> removeByExerciseId(int exerciseId);
}

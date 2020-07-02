import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/core/value_objects/month.dart';
import 'package:power_progress/domain/core/week_enum.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/exercise_failure.dart';

abstract class IExerciseRepository {
  Future<Either<ExerciseFailure, int>> add(Exercise exercise);
  Future<Either<ExerciseFailure, List<Exercise>>> get();
  Future<Either<ExerciseFailure, Option<Exercise>>> getById(int exerciseId);
  Future<Either<ExerciseFailure, Unit>> remove(List<int> ids);
  Future<Either<ExerciseFailure, Unit>> updateNextWeek(int exerciseId, WeekEnum week);
  Future<Either<ExerciseFailure, Unit>> updateNextMonth(int exerciseId, Month nextMonth);
}

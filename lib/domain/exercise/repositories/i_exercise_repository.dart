import 'package:dartz/dartz.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';

import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';

abstract class IExerciseRepository {
  Future<Either<ExerciseFailure, Unit>> add(Exercise exercise);
  Future<Either<ExerciseFailure, List<Exercise>>> get();
  Future<Either<ExerciseFailure, Unit>> remove(List<int> ids);
  Future<Either<ExerciseFailure, Unit>> updateNextWeek(int exerciseId, WeekEnum week);
  Future<Either<ExerciseFailure, Unit>> updateNextMonth(int exerciseId, Month nextMonth);
}

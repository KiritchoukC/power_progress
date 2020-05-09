import 'package:dartz/dartz.dart';

import '../entities/exercise.dart';
import '../entities/exercise_failure.dart';

abstract class IExerciseRepository {
  Future<Either<ExerciseFailure, Unit>> add(Exercise exercise);
  Future<Either<ExerciseFailure, List<Exercise>>> get();
}

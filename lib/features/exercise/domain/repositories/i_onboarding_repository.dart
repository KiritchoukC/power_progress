import 'package:dartz/dartz.dart';

import '../entities/exercise_failure.dart';

abstract class IOnboardingRepository {
  Future<Either<ExerciseFailure, Unit>> done();
  Future<Either<ExerciseFailure, bool>> get isDone;
}

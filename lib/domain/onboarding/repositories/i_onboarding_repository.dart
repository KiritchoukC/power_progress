import 'package:dartz/dartz.dart';

import '../entities/onboarding_failure.dart';

abstract class IOnboardingRepository {
  Future<Either<OnboardingFailure, Unit>> done();
  Future<Either<OnboardingFailure, bool>> get isDone;
}

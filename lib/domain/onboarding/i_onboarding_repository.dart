import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/onboarding/onboarding_failure.dart';

abstract class IOnboardingRepository {
  Future<Either<OnboardingFailure, Unit>> done();
  Future<Either<OnboardingFailure, bool>> get isDone;
}

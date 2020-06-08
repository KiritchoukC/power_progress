import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/onboarding/entities/onboarding_failure.dart';
import 'package:power_progress/domain/onboarding/repositories/i_onboarding_repository.dart';

class DoneOnboarding implements UseCase<Unit, OnboardingFailure, NoParams> {
  final IOnboardingRepository onboardingRepository;

  DoneOnboarding({@required this.onboardingRepository}) : assert(onboardingRepository != null);

  @override
  Future<Either<OnboardingFailure, Unit>> call(NoParams params) => onboardingRepository.done();
}

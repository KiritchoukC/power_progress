import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/onboarding/entities/onboarding_failure.dart';
import 'package:power_progress/domain/onboarding/repositories/i_onboarding_repository.dart';

class IsDoneOnboarding implements UseCase<bool, OnboardingFailure, NoParams> {
  final IOnboardingRepository onboardingRepository;

  IsDoneOnboarding({@required this.onboardingRepository}) : assert(onboardingRepository != null);

  @override
  Future<Either<OnboardingFailure, bool>> call(NoParams params) => onboardingRepository.isDone;
}

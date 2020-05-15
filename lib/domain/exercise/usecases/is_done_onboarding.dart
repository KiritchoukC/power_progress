import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../core/usecases/usecase.dart';
import '../entities/exercise_failure.dart';
import '../repositories/i_onboarding_repository.dart';

class IsDoneOnboarding implements UseCase<bool, ExerciseFailure, NoParams> {
  final IOnboardingRepository onboardingRepository;

  IsDoneOnboarding({@required this.onboardingRepository}) : assert(onboardingRepository != null);

  @override
  Future<Either<ExerciseFailure, bool>> call(NoParams params) => onboardingRepository.isDone;
}

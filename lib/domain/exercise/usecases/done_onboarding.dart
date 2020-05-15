import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../core/usecases/usecase.dart';
import '../entities/exercise_failure.dart';
import '../repositories/i_onboarding_repository.dart';

class DoneOnboarding implements UseCase<Unit, ExerciseFailure, NoParams> {
  final IOnboardingRepository onboardingRepository;

  DoneOnboarding({@required this.onboardingRepository}) : assert(onboardingRepository != null);

  @override
  Future<Either<ExerciseFailure, Unit>> call(NoParams params) => onboardingRepository.done();
}

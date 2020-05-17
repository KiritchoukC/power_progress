import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../core/usecases/usecase.dart';
import '../entities/exercise.dart';
import '../entities/exercise_failure.dart';
import '../repositories/i_exercise_repository.dart';

class FetchExercises implements UseCase<List<Exercise>, ExerciseFailure, NoParams> {
  final IExerciseRepository exerciseRepository;

  FetchExercises({@required this.exerciseRepository}) : assert(exerciseRepository != null);

  @override
  Future<Either<ExerciseFailure, List<Exercise>>> call(NoParams params) => exerciseRepository.get();
}

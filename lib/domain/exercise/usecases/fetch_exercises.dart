import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';

class FetchExercises implements UseCase<List<Exercise>, ExerciseFailure, NoParams> {
  final IExerciseRepository exerciseRepository;

  FetchExercises({@required this.exerciseRepository}) : assert(exerciseRepository != null);

  @override
  Future<Either<ExerciseFailure, List<Exercise>>> call(NoParams params) => exerciseRepository.get();
}

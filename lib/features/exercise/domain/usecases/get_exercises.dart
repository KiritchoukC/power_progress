import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/exercise.dart';
import '../repositories/i_exercise_repository.dart';

class GetExercises implements UseCase<List<Exercise>, NoParams> {
  final IExerciseRepository exerciseRepository;

  GetExercises({@required this.exerciseRepository}) : assert(exerciseRepository != null);

  @override
  Future<Either<Failure, List<Exercise>>> call(NoParams params) async {
    return Right(await exerciseRepository.get());
  }
}

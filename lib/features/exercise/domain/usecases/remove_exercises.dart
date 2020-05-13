import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/exercise_failure.dart';
import '../repositories/i_exercise_repository.dart';

class RemoveExercises implements UseCase<Unit, ExerciseFailure, RemoveExercisesParams> {
  final IExerciseRepository exerciseRepository;

  RemoveExercises({@required this.exerciseRepository}) : assert(exerciseRepository != null);

  @override
  Future<Either<ExerciseFailure, Unit>> call(RemoveExercisesParams params) async => right(unit);
  // exerciseRepository.remove(params.exercise);
}

class RemoveExercisesParams extends Equatable {
  final List<int> ids;

  const RemoveExercisesParams({
    @required this.ids,
  });

  @override
  List<Object> get props => [ids];
}

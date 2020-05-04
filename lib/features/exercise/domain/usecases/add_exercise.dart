import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/exercise.dart';
import '../repositories/i_exercise_repository.dart';

class AddExercise implements UseCase<Exercise, AddExerciseParams> {
  final IExerciseRepository exerciseRepository;

  AddExercise({@required this.exerciseRepository}) : assert(exerciseRepository != null);

  @override
  Future<Either<Failure, Exercise>> call(AddExerciseParams params) async {
    return Right(await exerciseRepository.add(params.exercise));
  }
}

class AddExerciseParams extends Equatable {
  final Exercise exercise;

  const AddExerciseParams({
    @required this.exercise,
  });

  @override
  List<Object> get props => [exercise];
}

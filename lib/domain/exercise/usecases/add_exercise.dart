import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';

class AddExercise implements UseCase<Unit, ExerciseFailure, AddExerciseParams> {
  final IExerciseRepository exerciseRepository;

  AddExercise({@required this.exerciseRepository}) : assert(exerciseRepository != null);

  @override
  Future<Either<ExerciseFailure, Unit>> call(AddExerciseParams params) =>
      exerciseRepository.add(params.exercise);
}

class AddExerciseParams extends Equatable {
  final Exercise exercise;

  const AddExerciseParams({
    @required this.exercise,
  });

  @override
  List<Object> get props => [exercise];
}

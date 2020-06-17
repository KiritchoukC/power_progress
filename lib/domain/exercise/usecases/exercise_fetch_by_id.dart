import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';

class ExerciseFetchById implements UseCase<Exercise, ExerciseFailure, ExerciseFetchByIdParams> {
  final IExerciseRepository exerciseRepository;

  ExerciseFetchById({@required this.exerciseRepository}) : assert(exerciseRepository != null);

  @override
  Future<Either<ExerciseFailure, Exercise>> call(ExerciseFetchByIdParams params) =>
      exerciseRepository.getById(params.id);
}

class ExerciseFetchByIdParams extends Equatable {
  final int id;

  const ExerciseFetchByIdParams({@required this.id});

  @override
  List<Object> get props => [id];
}

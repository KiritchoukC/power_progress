import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';

class UpdateOneRm implements UseCase<Unit, ExerciseFailure, UpdateOneRmParams> {
  final IExerciseRepository exerciseRepository;

  UpdateOneRm({
    @required this.exerciseRepository,
  }) : assert(exerciseRepository != null);

  @override
  Future<Either<ExerciseFailure, Unit>> call(UpdateOneRmParams params) =>
      exerciseRepository.updateOneRm(params.exerciseId, params.oneRm);
}

class UpdateOneRmParams extends Equatable {
  final int exerciseId;
  final OneRm oneRm;

  const UpdateOneRmParams({
    @required this.exerciseId,
    @required this.oneRm,
  });

  @override
  List<Object> get props => [exerciseId, oneRm];
}

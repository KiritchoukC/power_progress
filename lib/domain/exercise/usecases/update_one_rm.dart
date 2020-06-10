import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';
import 'package:power_progress/domain/workout/entities/workout.dart';

class UpdateOneRm implements UseCase<Unit, ExerciseFailure, UpdateOneRmParams> {
  final IExerciseRepository exerciseRepository;

  UpdateOneRm({
    @required this.exerciseRepository,
  }) : assert(exerciseRepository != null);

  @override
  Future<Either<ExerciseFailure, Unit>> call(UpdateOneRmParams params) async {
    final exercise =
        (await exerciseRepository.getById(params.exerciseId)).getOrElse(() => throw Error());
    final targetReps = WorkoutHelper.getTargetReps(params.month);

    final newOneRm = ((params.repsDone - targetReps) * exercise.incrementation.getOrCrash()) +
        params.oneRm.getOrCrash();

    return exerciseRepository.updateOneRm(params.exerciseId, OneRm(newOneRm));
  }
}

class UpdateOneRmParams extends Equatable {
  final int exerciseId;
  final OneRm oneRm;
  final Month month;
  final int repsDone;

  const UpdateOneRmParams({
    @required this.exerciseId,
    @required this.oneRm,
    @required this.month,
    @required this.repsDone,
  });

  @override
  List<Object> get props => [exerciseId, oneRm];
}

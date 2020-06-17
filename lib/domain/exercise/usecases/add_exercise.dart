import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/repositories/i_one_rm_repository.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_generate_and_save.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_upsert.dart';

class AddExercise implements UseCase<Unit, ExerciseFailure, AddExerciseParams> {
  final IExerciseRepository exerciseRepository;
  final OneRmUpsert oneRmUpsert;

  AddExercise({
    @required this.exerciseRepository,
    @required this.oneRmUpsert,
  })  : assert(exerciseRepository != null),
        assert(oneRmUpsert != null);

  @override
  Future<Either<ExerciseFailure, Unit>> call(AddExerciseParams params) {
    return exerciseRepository.add(params.exercise).then(
          (addEither) => addEither.fold(
            (addFailure) => left(addFailure),
            (exerciseId) => oneRmUpsert(
              OneRmUpsertParams(
                exerciseId: exerciseId,
                month: Month(1),
                oneRm: params.oneRm,
              ),
            ).then(
              (oneRmEither) => oneRmEither.fold(
                (oneRmFailure) => left(_mapToExerciseFailure(oneRmFailure)),
                (oneRmUnit) => right(oneRmUnit),
              ),
            ),
          ),
        );
  }

  ExerciseFailure _mapToExerciseFailure(OneRmFailure oneRmFailure) => oneRmFailure.when(
        storageError: () => const ExerciseFailure.storageError(),
        unexpectedError: () => const ExerciseFailure.unexpectedError(),
        itemDoesNotExist: () => const ExerciseFailure.oneRmDoestNotExist(),
        itemAlreadyExists: () => const ExerciseFailure.oneRmAlreadyExists(),
      );
}

class AddExerciseParams extends Equatable {
  final Exercise exercise;
  final OneRm oneRm;

  const AddExerciseParams({
    @required this.exercise,
    @required this.oneRm,
  });

  @override
  List<Object> get props => [exercise, oneRm];
}

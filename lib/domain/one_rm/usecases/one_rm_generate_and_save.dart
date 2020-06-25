import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/i_exercise_repository.dart';
import 'package:power_progress/domain/exercise/usecases/exercise_fetch_by_id.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/repositories/i_one_rm_repository.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_upsert.dart';
import 'package:power_progress/domain/workout/entities/workout.dart';

class OneRmGenerateAndSave implements UseCase<OneRm, OneRmFailure, OneRmGenerateAndSaveParams> {
  final IOneRmRepository oneRmRepository;
  final IExerciseRepository exerciseRepository;

  final OneRmUpsert oneRmUpsert;

  OneRmGenerateAndSave({
    @required this.oneRmRepository,
    @required this.exerciseRepository,
    @required this.oneRmUpsert,
  }) : assert(oneRmRepository != null);

  @override
  Future<Either<OneRmFailure, OneRm>> call(OneRmGenerateAndSaveParams params) async {
    OneRm _generateOneRm(Exercise exercise) {
      return params.repsDone.fold(
        () => params.oneRm,
        (repsDone) {
          final targetReps = WorkoutHelper.getTargetReps(params.month);

          final newOneRm = ((repsDone - targetReps) * exercise.incrementation.getOrCrash()) +
              params.oneRm.getOrCrash();

          return OneRm(newOneRm);
        },
      );
    }

    return exerciseFetchById(ExerciseFetchByIdParams(id: params.exerciseId)).then(
      (exerciseEither) => exerciseEither.fold(
        (exerciseFailure) => left(_mapToOneRmFailure(exerciseFailure)),
        (exercise) async {
          final newOneRm = _generateOneRm(exercise);

          await oneRmUpsert(
            OneRmUpsertParams(
              exerciseId: params.exerciseId,
              month: params.month.next,
              oneRm: newOneRm,
            ),
          );

          return right(newOneRm);
        },
      ),
    );
  }

  OneRmFailure _mapToOneRmFailure(ExerciseFailure exerciseFailure) => exerciseFailure.when(
        storageError: () => const OneRmFailure.storageError(),
        unexpectedError: () => const OneRmFailure.unexpectedError(),
        oneRmDoestNotExist: () => const OneRmFailure.itemDoesNotExist(),
        oneRmAlreadyExists: () => const OneRmFailure.itemAlreadyExists(),
      );
}

class OneRmGenerateAndSaveParams extends Equatable {
  final int exerciseId;
  final OneRm oneRm;
  final Month month;
  final Option<int> repsDone;

  const OneRmGenerateAndSaveParams({
    @required this.exerciseId,
    @required this.oneRm,
    @required this.month,
    @required this.repsDone,
  });

  @override
  List<Object> get props => [exerciseId, oneRm, month, repsDone];
}

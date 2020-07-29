import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';

import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/i_exercise_repository.dart';
import 'package:power_progress/domain/one_rm/i_one_rm_repository.dart';
import 'package:power_progress/domain/one_rm/one_rm_failure.dart';
import 'package:power_progress/domain/shared/common_failure.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/workout/i_workout_repository.dart';
import 'package:power_progress/domain/workout/month_workout.dart';
import 'package:power_progress/domain/workout/workout_failure.dart';
import 'package:power_progress/application/workout/workout_cubit.dart';

class GenerateHandler {
  final IOneRmRepository oneRmRepository;
  final IExerciseRepository exerciseRepository;
  final IWorkoutRepository workoutRepository;

  GenerateHandler({
    @required this.oneRmRepository,
    @required this.exerciseRepository,
    @required this.workoutRepository,
  });

  /// handle the [Generate] event
  Future call({
    @required Function(WorkoutState) emit,
    @required int exerciseId,
    @required Month month,
  }) async {
    emit(const WorkoutState.generateInProgress());

    final output = await generate(exerciseId, month);

    output.fold(
      (failure) => emit(WorkoutState.error(message: failure.toErrorMessage())),
      (workout) => emit(WorkoutState.generated(workout: workout, month: month)),
    );
  }

  Future<Either<OneRmFailure, OneRm>> getOneRm(int exerciseId, Month month) async {
    // Right: if it exists, get the one rm for the given [id]
    // Left: if one rm does not exist
    Future<Either<OneRmFailure, OneRm>> getOneRmById(int id) async {
      final oneRmOptionEither = await oneRmRepository.getById(id);
      return oneRmOptionEither.fold(
        (l) => left(l),
        (oneRmOption) {
          return oneRmOption.fold(
            () => left(const OneRmFailure.itemDoesNotExist()),
            (oneRm) => right(oneRm),
          );
        },
      );
    }

    // Right: if it exists, get the exercise for the given [id]
    // Left: if exercise does not exist
    Future<Either<OneRmFailure, Exercise>> getExerciseById(int id) async {
      final exerciseEither = await exerciseRepository.getById(exerciseId);
      return exerciseEither.fold(
        (failure) => left(const OneRmFailure.common(CommonFailure.unexpectedError())),
        (option) => option.fold(
            () => left(const OneRmFailure.common(CommonFailure.unexpectedError())),
            (exercise) => right(exercise)),
      );
    }

    Future<Either<OneRmFailure, OneRm>> ifNone() async {
      // if the month is not the start of a new workout just return the
      // one rm of the previous month after persisting it.
      if (month.isStartWorkout == false) {
        final addedIdEither = await oneRmRepository.addFromPreviousMonth(exerciseId, month);
        return addedIdEither.fold(
          (l) => left(l),
          (id) async => getOneRmById(id),
        );
      }

      // if it's the start of a new month, get the exercise to get the incrementation
      final exerciseEither = await getExerciseById(exerciseId);
      // get the previous one rm
      final previousOneRmEither = await oneRmRepository.getOrPrevious(exerciseId, month.previous);

      return exerciseEither.fold(
        (f) => left(f),
        (exercise) {
          // add the new incremented one rm
          return previousOneRmEither.fold(
            (l) => left(l),
            (previousOneRm) async {
              final addedId = await oneRmRepository.add(
                exerciseId,
                month,
                OneRm.increment(previousOneRm, exercise.incrementation),
              );

              // return the added one rm
              return addedId.fold(
                (l) => left(l),
                (id) async => getOneRmById(id),
              );
            },
          );
        },
      );
    }

    final oneRmOptionEither = await oneRmRepository.getByExerciseIdAndMonth(exerciseId, month);

    return oneRmOptionEither.fold(
        (failure) => left(failure),
        (option) => option.fold(
              ifNone,
              (some) => right(some),
            ));
  }

  Future<Either<WorkoutFailure, MonthWorkout>> generate(int exerciseId, Month month) async {
    final workoutsDoneEither = await workoutRepository.getWorkoutsDone(exerciseId);
    final oneRmEither = await getOneRm(exerciseId, month);

    WorkoutFailure _mapToWorkoutFailure(OneRmFailure oneRmFailure) {
      return oneRmFailure.when(
        itemDoesNotExist: () => const WorkoutFailure.oneRm(OneRmFailure.itemDoesNotExist()),
        itemAlreadyExists: () => const WorkoutFailure.oneRm(OneRmFailure.itemAlreadyExists()),
        noExistingDataForThisExercise: () =>
            const WorkoutFailure.oneRm(OneRmFailure.noExistingDataForThisExercise()),
        common: (commonFailure) => commonFailure.when(
          storageError: () => const WorkoutFailure.common(CommonFailure.storageError()),
          unexpectedError: () => const WorkoutFailure.common(CommonFailure.unexpectedError()),
        ),
      );
    }

    return workoutsDoneEither.fold(
      (workoutsDoneFailure) => left(workoutsDoneFailure),
      (workoutsDone) => oneRmEither.fold(
        (oneRmFailure) => left(_mapToWorkoutFailure(oneRmFailure)),
        (oneRm) => right(
          MonthWorkout.generate(
            exerciseId,
            month,
            workoutsDone,
            oneRm,
          ),
        ),
      ),
    );
  }
}

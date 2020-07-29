import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/exercise_failure.dart';
import 'package:power_progress/domain/exercise/i_exercise_repository.dart';
import 'package:power_progress/application/one_rm/one_rm_cubit.dart';
import 'package:power_progress/application/workout/workout_cubit.dart';

part 'exercise_state.dart';
part 'exercise_cubit.freezed.dart';

class ExerciseCubit extends Cubit<ExerciseState> {
  final IExerciseRepository exerciseRepository;
  final OneRmCubit oneRmBloc;
  final WorkoutCubit workoutCubit;

  ExerciseCubit({
    @required this.exerciseRepository,
    @required this.oneRmBloc,
    @required this.workoutCubit,
  }) : super(const ExerciseState.initial());

  /// adds the specified [exercise] with the given [oneRm]
  Future add({@required Exercise exercise, @required OneRm oneRm}) async {
    emit(const ExerciseState.addInProgress());

    final output = await exerciseRepository.add(exercise);

    output.fold(
      _handleFailure,
      (addedExerciseId) {
        emit(const ExerciseState.added());

        oneRmBloc.init(
          exerciseId: addedExerciseId,
          oneRm: oneRm,
          incrementation: exercise.incrementation,
        );
      },
    );
  }

  Future fetch() async {
    emit(const ExerciseState.fetchInProgress());

    final output = await exerciseRepository.get();

    output.fold(
      _handleFailure,
      (exercises) => emit(ExerciseState.fetched(exercises: exercises)),
    );
  }

  Future remove({@required List<int> exerciseIdsToRemove}) async {
    emit(const ExerciseState.removeInProgress());

    final output = await exerciseRepository.remove(exerciseIdsToRemove);

    output.fold(
      _handleFailure,
      (_) {
        // remove workout done persisted data associated to this exercise
        exerciseIdsToRemove.map((id) => workoutCubit.remove(exerciseId: id));
        // remove one rm data associated to this exercise
        exerciseIdsToRemove.map((id) => oneRmBloc.remove(exerciseId: id));

        emit(const ExerciseState.removed());
      },
    );
  }

  void _handleFailure(ExerciseFailure failure) =>
      emit(ExerciseState.error(message: failure.toErrorMessage()));
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:power_progress/core/messages/errors.dart';
import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/usecases/add_exercise.dart';
import 'package:power_progress/domain/exercise/usecases/fetch_exercises.dart';
import 'package:power_progress/domain/exercise/usecases/remove_exercises.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';
part 'exercise_bloc.freezed.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final AddExercise addExercise;
  final FetchExercises fetchExercises;
  final RemoveExercises removeExercises;

  ExerciseBloc({
    @required this.addExercise,
    @required this.fetchExercises,
    @required this.removeExercises,
  });

  @override
  ExerciseState get initialState => ExerciseInitialState();

  @override
  Stream<ExerciseState> mapEventToState(ExerciseEvent event) async* {
    yield* event.map(
      add: _handleExerciseAddEvent,
      fetch: _handleExerciseFetchEvent,
      selectionMode: _handleExerciseSelectionModeEvent,
      remove: _handleExerciseRemoveEvent,
    );
  }

  Stream<ExerciseState> _handleExerciseAddEvent(Add event) async* {
    yield ExerciseAddingState();

    final output = await addExercise(AddExerciseParams(exercise: event.exercise));

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(Unit unit) async* {
      yield ExerciseAddedState();
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleExerciseFetchEvent(Fetch event) async* {
    yield ExerciseFetchingState();

    final output = await fetchExercises(NoParams());

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(List<Exercise> exercises) async* {
      yield ExerciseFetchedState(exercises: exercises);
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleExerciseSelectionModeEvent(SelectionMode event) async* {
    yield ExerciseSelectionModeState(
      isInSelectionMode: event.isInSelectionMode,
      selectedIds: event.selectedIds,
    );
  }

  Stream<ExerciseState> _handleExerciseRemoveEvent(Remove event) async* {
    yield ExerciseRemovingState();

    final output = await removeExercises(RemoveExercisesParams(ids: event.ids));

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(Unit unit) async* {
      yield ExerciseRemovedState();
      yield* _handleExerciseFetchEvent(const Fetch());
    }

    yield* output.fold(onFailure, onSuccess);
  }

  String mapFailureToErrorMessage(ExerciseFailure failure) {
    if (failure is StorageError) return storageErrorMessage;

    return unknownErrorMessage;
  }
}

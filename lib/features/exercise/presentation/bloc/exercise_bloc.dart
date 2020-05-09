import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/messages/errors.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/exercise.dart';
import '../../domain/entities/exercise_failure.dart';
import '../../domain/usecases/add_exercise.dart';
import '../../domain/usecases/get_exercises.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final AddExercise addExercise;
  final GetExercises getExercises;

  ExerciseBloc({
    @required this.addExercise,
    @required this.getExercises,
  });

  @override
  ExerciseState get initialState => ExerciseInitialState();
  @override
  Stream<ExerciseState> mapEventToState(
    ExerciseEvent event,
  ) async* {
    if (event is ExerciseAddEvent) {
      yield* _handleAddExerciseEvent(event);
    }

    if (event is ExerciseGetEvent) {
      yield* _handleGetExerciseEvent(event);
    }
  }

  Stream<ExerciseState> _handleAddExerciseEvent(ExerciseAddEvent event) async* {
    yield ExerciseLoadingState();

    final output = await addExercise(AddExerciseParams(exercise: event.exercise));

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseGetFailedState(message: mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(Unit unit) async* {
      yield ExerciseAddLoadedState();
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleGetExerciseEvent(ExerciseGetEvent event) async* {
    yield ExerciseLoadingState();

    final output = await getExercises(NoParams());

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseGetFailedState(message: mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(List<Exercise> exercises) async* {
      yield ExerciseGetLoadedState(exercises: exercises);
    }

    yield* output.fold(onFailure, onSuccess);
  }

  String mapFailureToErrorMessage(ExerciseFailure failure) {
    if (failure is StorageError) return storageErrorMessage;

    return unknownErrorMessage;
  }
}

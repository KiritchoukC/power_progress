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
import '../../domain/usecases/done_onboarding.dart';
import '../../domain/usecases/get_exercises.dart';
import '../../domain/usecases/is_done_onboarding.dart';
import '../../domain/usecases/remove_exercises.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final AddExercise addExercise;
  final FetchExercises fetchExercises;
  final DoneOnboarding doneOnboarding;
  final IsDoneOnboarding isDoneOnboarding;
  final RemoveExercises removeExercises;

  ExerciseBloc({
    @required this.addExercise,
    @required this.fetchExercises,
    @required this.doneOnboarding,
    @required this.isDoneOnboarding,
    @required this.removeExercises,
  });

  @override
  ExerciseState get initialState => ExerciseInitialState();
  @override
  Stream<ExerciseState> mapEventToState(
    ExerciseEvent event,
  ) async* {
    if (event is ExerciseAddEvent) {
      yield* _handleExerciseAddEvent(event);
    }

    if (event is ExerciseFetchEvent) {
      yield* _handleExerciseFetchEvent(event);
    }

    if (event is OnboardingDoneEvent) {
      yield* _handleOnboardingDoneEvent(event);
    }

    if (event is OnboardingIsDoneEvent) {
      yield* _handleOnboardingIsDoneEvent(event);
    }

    if (event is ExerciseSelectionModeEvent) {
      yield* _handleExerciseSelectionModeEvent(event);
    }

    if (event is ExerciseRemoveEvent) {
      yield* _handleExerciseRemoveEvent(event);
    }
  }

  Stream<ExerciseState> _handleExerciseAddEvent(ExerciseAddEvent event) async* {
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

  Stream<ExerciseState> _handleExerciseFetchEvent(ExerciseFetchEvent event) async* {
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

  Stream<ExerciseState> _handleOnboardingDoneEvent(OnboardingDoneEvent event) async* {
    yield OnboardingMarkingDoneState();

    final output = await doneOnboarding(NoParams());

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(Unit unit) async* {
      yield OnboardingMarkedDoneState();
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleOnboardingIsDoneEvent(OnboardingIsDoneEvent event) async* {
    yield OnboardingIsDoneLoadingState();

    final output = await isDoneOnboarding(NoParams());

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(bool isDone) async* {
      if (isDone) {
        yield OnboardingIsDoneState();
      } else {
        yield OnboardingIsNotDoneState();
      }
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleExerciseSelectionModeEvent(ExerciseSelectionModeEvent event) async* {
    yield ExerciseSelectionModeState(
      isInSelectionMode: event.isInSelectionMode,
      selectedIds: event.selectedIds,
    );
  }

  Stream<ExerciseState> _handleExerciseRemoveEvent(ExerciseRemoveEvent event) async* {
    yield ExerciseRemovingState();

    final output = await removeExercises(RemoveExercisesParams(ids: event.ids));

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(Unit unit) async* {
      yield ExerciseRemovedState();
      yield* _handleExerciseFetchEvent(ExerciseFetchEvent());
    }

    yield* output.fold(onFailure, onSuccess);
  }

  String mapFailureToErrorMessage(ExerciseFailure failure) {
    // if (failure is StorageError) return storageErrorMessage;

    return unknownErrorMessage;
  }
}

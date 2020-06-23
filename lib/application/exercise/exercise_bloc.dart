import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:power_progress/core/messages/errors.dart';
import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/week.dart';
import 'package:power_progress/domain/exercise/usecases/add_exercise.dart';
import 'package:power_progress/domain/exercise/usecases/fetch_exercises.dart';
import 'package:power_progress/domain/exercise/usecases/remove_exercises.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_month.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_week.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';
part 'exercise_bloc.freezed.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final AddExercise addExercise;
  final FetchExercises fetchExercises;
  final RemoveExercises removeExercises;
  final UpdateExerciseNextMonth updateExerciseNextMonth;
  final UpdateExerciseNextWeek updateExerciseNextWeek;

  ExerciseBloc({
    @required this.addExercise,
    @required this.fetchExercises,
    @required this.removeExercises,
    @required this.updateExerciseNextMonth,
    @required this.updateExerciseNextWeek,
  });

  @override
  ExerciseState get initialState => const ExerciseState.initial();

  @override
  Stream<ExerciseState> mapEventToState(ExerciseEvent event) async* {
    yield* event.map(
      add: _handleExerciseAddEvent,
      fetch: _handleExerciseFetchEvent,
      selectionMode: _handleExerciseSelectionModeEvent,
      remove: _handleExerciseRemoveEvent,
      updateNextMonth: _handleUpdateNextMonthEvent,
      updateNextWeek: _handleUpdateNextWeekEvent,
    );
  }

  Stream<ExerciseState> _handleExerciseAddEvent(Add event) async* {
    yield const ExerciseState.addInProgress();

    final output = await addExercise(AddExerciseParams(
      exercise: event.exercise,
      oneRm: event.oneRm,
    ));

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseState.error(message: _mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(Unit unit) async* {
      yield const ExerciseState.added();
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleExerciseFetchEvent(Fetch event) async* {
    yield const ExerciseState.fetchInProgress();

    final output = await fetchExercises(NoParams());

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseState.error(message: _mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(List<Exercise> exercises) async* {
      yield ExerciseState.fetched(exercises: exercises);
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleExerciseSelectionModeEvent(SelectionMode event) async* {
    if (event.isInSelectionMode) {
      yield ExerciseState.selected(selectedIds: event.selectedIds);
    } else {
      yield ExerciseState.unselected(unselectedIds: event.selectedIds);
    }
  }

  Stream<ExerciseState> _handleExerciseRemoveEvent(Remove event) async* {
    yield const ExerciseState.removeInProgress();

    final output = await removeExercises(RemoveExercisesParams(ids: event.ids));

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseState.error(message: _mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(Unit unit) async* {
      yield const ExerciseState.removed();
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleUpdateNextMonthEvent(UpdateNextMonth event) async* {
    yield const ExerciseState.monthUpdateInProgress();

    final output = await updateExerciseNextMonth(
      UpdateExerciseNextMonthParams(
        exerciseId: event.exerciseId,
        nextMonth: event.nextMonth,
      ),
    );

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseState.error(message: _mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(Unit unit) async* {
      yield ExerciseState.monthUpdated(month: event.nextMonth);
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleUpdateNextWeekEvent(UpdateNextWeek event) async* {
    yield const ExerciseState.weekUpdateInProgress();

    final output = await updateExerciseNextWeek(
      UpdateExerciseNextWeekParams(
        exerciseId: event.exerciseId,
        nextWeek: event.nextWeek,
      ),
    );

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseState.error(message: _mapFailureToErrorMessage(failure));
    }

    Stream<ExerciseState> onSuccess(Unit unit) async* {
      yield ExerciseState.weekUpdated(week: Week(event.nextWeek));
    }

    yield* output.fold(onFailure, onSuccess);
  }

  String _mapFailureToErrorMessage(ExerciseFailure failure) {
    if (failure is StorageError) return storageErrorMessage;

    return unknownErrorMessage;
  }
}

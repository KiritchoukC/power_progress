import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:power_progress/domain/core/value_objects/month.dart';
import 'package:power_progress/domain/core/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/exercise_failure.dart';
import 'package:power_progress/domain/exercise/i_exercise_repository.dart';
import 'package:power_progress/application/one_rm/one_rm_bloc.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';
part 'exercise_bloc.freezed.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final IExerciseRepository exerciseRepository;
  final OneRmBloc oneRmBloc;
  final WorkoutBloc workoutBloc;

  ExerciseBloc({
    @required this.exerciseRepository,
    @required this.oneRmBloc,
    @required this.workoutBloc,
  });

  @override
  ExerciseState get initialState => const ExerciseState.initial();

  @override
  Stream<ExerciseState> mapEventToState(ExerciseEvent event) async* {
    yield* event.map(
      add: _handleExerciseAddEvent,
      fetch: _handleExerciseFetchEvent,
      remove: _handleExerciseRemoveEvent,
    );
  }

  Stream<ExerciseState> _handleExerciseAddEvent(Add event) async* {
    yield const ExerciseState.addInProgress();

    final output = await exerciseRepository.add(event.exercise);

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseState.error(message: failure.toErrorMessage());
    }

    Stream<ExerciseState> onSuccess(int addedExerciseId) async* {
      yield const ExerciseState.added();

      oneRmBloc.add(
        OneRmEvent.generateAndSave(
          exerciseId: addedExerciseId,
          oneRm: event.oneRm,
          incrementation: event.exercise.incrementation,
          month: Month(1),
          repsDone: none(),
        ),
      );
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleExerciseFetchEvent(Fetch event) async* {
    yield const ExerciseState.fetchInProgress();

    final output = await exerciseRepository.get();

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseState.error(message: failure.toErrorMessage());
    }

    Stream<ExerciseState> onSuccess(List<Exercise> exercises) async* {
      yield ExerciseState.fetched(exercises: exercises);
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<ExerciseState> _handleExerciseRemoveEvent(Remove event) async* {
    yield const ExerciseState.removeInProgress();

    final output = await exerciseRepository.remove(event.ids);

    Stream<ExerciseState> onFailure(ExerciseFailure failure) async* {
      yield ExerciseState.error(message: failure.toErrorMessage());
    }

    Stream<ExerciseState> onSuccess(Unit unit) async* {
      // remove workout done persisted data associated to this exercise
      event.ids.map((id) => workoutBloc.add(WorkoutEvent.remove(exerciseId: id)));
      // remove one rm data associated to this exercise
      event.ids.map((id) => oneRmBloc.add(OneRmEvent.remove(exerciseId: id)));

      yield const ExerciseState.removed();
    }

    yield* output.fold(onFailure, onSuccess);
  }
}

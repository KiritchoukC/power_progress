import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/messages/errors.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/month_workout.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/usecases/generate_workout.dart';
import 'package:power_progress/domain/workout/usecases/mark_workout_done.dart';
import 'package:power_progress/domain/workout/usecases/mark_workout_undone.dart';

part 'workout_event.dart';
part 'workout_state.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final GenerateWorkout generateWorkout;
  final MarkWorkoutDone markWorkoutDone;
  final MarkWorkoutUndone markWorkoutUndone;

  WorkoutBloc({
    @required this.generateWorkout,
    @required this.markWorkoutDone,
    @required this.markWorkoutUndone,
  });

  @override
  WorkoutState get initialState => WorkoutInitialState();

  @override
  Stream<WorkoutState> mapEventToState(
    WorkoutEvent event,
  ) async* {
    if (event is WorkoutGenerateEvent) {
      yield* _handleWorkoutGenerateEvent(event);
    }

    if (event is WorkoutMarkDoneEvent) {
      yield* _handleWorkoutMarkDoneEvent(event);
    }

    if (event is WorkoutMarkUndoneEvent) {
      yield* _handleWorkoutMarkUndoneEvent(event);
    }
  }

  Stream<WorkoutState> _handleWorkoutGenerateEvent(WorkoutGenerateEvent event) async* {
    yield WorkoutGeneratingState();

    final output = await generateWorkout(
      GenerateWorkoutParams(
        exerciseId: event.exerciseId,
        month: event.month,
        oneRm: event.oneRm,
      ),
    );

    Stream<WorkoutState> onFailure(WorkoutFailure failure) async* {
      yield WorkoutErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<WorkoutState> onSuccess(MonthWorkout workout) async* {
      yield WorkoutGeneratedState(workout: workout, month: event.month);
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<WorkoutState> _handleWorkoutMarkDoneEvent(WorkoutMarkDoneEvent event) async* {
    yield WorkoutMarkingDoneState();

    final output = await markWorkoutDone(
      MarkWorkoutDoneParams(
        exerciseId: event.exerciseId,
        month: event.month,
        week: event.week,
        repsDone: event.repsDone,
      ),
    );

    Stream<WorkoutState> onFailure(WorkoutFailure failure) async* {
      yield WorkoutErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<WorkoutState> onSuccess(Unit unit) async* {
      yield WorkoutMarkedDoneState();
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<WorkoutState> _handleWorkoutMarkUndoneEvent(WorkoutMarkUndoneEvent event) async* {
    yield WorkoutMarkingUndoneState();

    final output = await markWorkoutUndone(
      MarkWorkoutUndoneParams(
        id: event.id,
        exerciseId: event.exerciseId,
        week: event.week,
        month: event.month,
      ),
    );

    Stream<WorkoutState> onFailure(WorkoutFailure failure) async* {
      yield WorkoutErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<WorkoutState> onSuccess(Unit unit) async* {
      yield WorkoutMarkedUndoneState();
    }

    yield* output.fold(onFailure, onSuccess);
  }
}

String mapFailureToErrorMessage(WorkoutFailure failure) {
  if (failure is UnexpectedError) return generateWorkoutUnexpectedErrorMessage;

  return unknownErrorMessage;
}

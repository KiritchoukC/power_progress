import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/core/entities/weeks.dart';

import '../../core/messages/errors.dart';
import '../../domain/workout/entities/workout.dart';
import '../../domain/workout/entities/workout_failure.dart';
import '../../domain/workout/usecases/generate_workout.dart';
import '../../domain/workout/usecases/mark_workout_done.dart';

part 'workout_event.dart';
part 'workout_state.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final GenerateWorkout generateWorkout;
  final MarkWorkoutDone markWorkoutDone;

  WorkoutBloc({
    @required this.generateWorkout,
    @required this.markWorkoutDone,
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
      yield* _handleWorkoutDoneEvent(event);
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

    Stream<WorkoutState> onSuccess(Workout workout) async* {
      yield WorkoutGeneratedState(
        workout: workout,
      );
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<WorkoutState> _handleWorkoutDoneEvent(WorkoutMarkDoneEvent event) async* {
    yield WorkoutMarkingDoneState();

    final output = await markWorkoutDone(
      MarkWorkoutDoneParams(
        exerciseId: event.exerciseId,
        month: event.month,
        week: event.week,
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
}

String mapFailureToErrorMessage(WorkoutFailure failure) {
  if (failure is UnexpectedError) return generateWorkoutUnexpectedErrorMessage;

  return unknownErrorMessage;
}

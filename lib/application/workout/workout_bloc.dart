import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../core/messages/errors.dart';
import '../../domain/workout/entities/workout.dart';
import '../../domain/workout/entities/workout_failure.dart';
import '../../domain/workout/usecases/generate_workout.dart';

part 'workout_event.dart';
part 'workout_state.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final GenerateWorkout generateWorkout;

  WorkoutBloc({@required this.generateWorkout});

  @override
  WorkoutState get initialState => WorkoutInitialState();

  @override
  Stream<WorkoutState> mapEventToState(
    WorkoutEvent event,
  ) async* {
    if (event is WorkoutGenerateEvent) {
      yield* _handleWorkoutGenerateEvent(event);
    }
  }

  Stream<WorkoutState> _handleWorkoutGenerateEvent(WorkoutGenerateEvent event) async* {
    yield WorkoutGeneratingState();

    final output = await generateWorkout(
      GenerateWorkoutParams(
        month: event.month,
        oneRm: event.oneRm,
      ),
    );

    Stream<WorkoutState> onFailure(WorkoutFailure failure) async* {
      yield WorkoutErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<WorkoutState> onSuccess(Workout workout) async* {
      yield WorkoutGeneratedState();
    }

    yield* output.fold(onFailure, onSuccess);
  }
}

String mapFailureToErrorMessage(WorkoutFailure failure) {
  if (failure is UnexpectedError) return generateWorkoutUnexpectedErrorMessage;

  return unknownErrorMessage;
}

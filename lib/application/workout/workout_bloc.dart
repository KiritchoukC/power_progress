import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:power_progress/core/messages/errors.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/month_workout.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/usecases/generate_workout.dart';
import 'package:power_progress/domain/workout/usecases/mark_workout_done.dart';
import 'package:power_progress/domain/workout/usecases/mark_workout_undone.dart';

part 'workout_event.dart';
part 'workout_state.dart';
part 'workout_bloc.freezed.dart';

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
  WorkoutState get initialState => const WorkoutState.initial();

  @override
  Stream<WorkoutState> mapEventToState(
    WorkoutEvent event,
  ) async* {
    yield* event.map(
      generate: _handleGenerateEvent,
      markDone: _handleMarkDoneEvent,
      markUndone: _handleMarkUndoneEvent,
    );
  }

  Stream<WorkoutState> _handleGenerateEvent(Generate event) async* {
    yield const WorkoutState.generateInProgress();

    final output = await generateWorkout(
      GenerateWorkoutParams(
        exerciseId: event.exerciseId,
        month: event.month,
        oneRm: event.oneRm,
      ),
    );

    Stream<WorkoutState> onFailure(WorkoutFailure failure) async* {
      yield WorkoutState.error(message: mapFailureToErrorMessage(failure));
    }

    Stream<WorkoutState> onSuccess(MonthWorkout workout) async* {
      yield WorkoutState.generated(workout: workout, month: event.month);
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<WorkoutState> _handleMarkDoneEvent(MarkDone event) async* {
    yield const WorkoutState.markDoneInProgress();

    final output = await markWorkoutDone(
      MarkWorkoutDoneParams(
        exerciseId: event.exerciseId,
        month: event.month,
        week: event.week,
        repsDone: event.repsDone,
      ),
    );

    Stream<WorkoutState> onFailure(WorkoutFailure failure) async* {
      yield WorkoutState.error(message: mapFailureToErrorMessage(failure));
    }

    Stream<WorkoutState> onSuccess(Unit unit) async* {
      yield const WorkoutState.markedDone();
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<WorkoutState> _handleMarkUndoneEvent(MarkUndone event) async* {
    yield const WorkoutState.markUndoneInProgress();

    final output = await markWorkoutUndone(
      MarkWorkoutUndoneParams(
        id: event.id,
        exerciseId: event.exerciseId,
        week: event.week,
        month: event.month,
      ),
    );

    Stream<WorkoutState> onFailure(WorkoutFailure failure) async* {
      yield WorkoutState.error(message: mapFailureToErrorMessage(failure));
    }

    Stream<WorkoutState> onSuccess(Unit unit) async* {
      yield const WorkoutState.markedUndone();
    }

    yield* output.fold(onFailure, onSuccess);
  }
}

String mapFailureToErrorMessage(WorkoutFailure failure) {
  if (failure is UnexpectedError) return generateWorkoutUnexpectedErrorMessage;

  return unknownErrorMessage;
}

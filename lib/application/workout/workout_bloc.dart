import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:power_progress/application/exercise/month/month_bloc.dart';
import 'package:power_progress/application/exercise/week/week_bloc.dart';
import 'package:power_progress/application/one_rm/one_rm_bloc.dart';
import 'package:power_progress/application/workout/handlers/generate_handler.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/workout/month_workout.dart';
import 'package:power_progress/domain/workout/workout.dart';
import 'package:power_progress/domain/workout/workout_failure.dart';
import 'package:power_progress/domain/workout/i_workout_repository.dart';

part 'workout_event.dart';
part 'workout_state.dart';
part 'workout_bloc.freezed.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final WeekBloc weekBloc;
  final MonthBloc monthBloc;
  final OneRmBloc oneRmBloc;

  final IWorkoutRepository workoutRepository;

  final GenerateHandler generateHandler;

  WorkoutBloc({
    @required this.weekBloc,
    @required this.monthBloc,
    @required this.oneRmBloc,
    @required this.workoutRepository,
    @required this.generateHandler,
  }) : super(const WorkoutState.initial());

  @override
  Stream<WorkoutState> mapEventToState(
    WorkoutEvent event,
  ) async* {
    yield* event.map(
      resetState: _handleResetStateEvent,
      generate: generateHandler,
      markDone: _handleMarkDoneEvent,
      markUndone: _handleMarkUndoneEvent,
      remove: _handleRemoveEvent,
    );
  }

  Stream<WorkoutState> _handleResetStateEvent(ResetState value) async* {
    yield const WorkoutState.initial();
  }

  Stream<WorkoutState> _handleMarkDoneEvent(MarkDone event) async* {
    yield const WorkoutState.markDoneInProgress();

    final output =
        await workoutRepository.markDone(event.exerciseId, event.month, event.week, event.repsDone);

    yield* output.fold(
      (failure) async* {
        yield WorkoutState.error(message: failure.toErrorMessage());
      },
      (_) async* {
        yield WorkoutState.markedDone(
          exerciseId: event.exerciseId,
          month: event.month,
          oneRm: event.oneRm,
        );

        weekBloc.add(
          WeekEvent.updateNextWeek(
            exerciseId: event.exerciseId,
            nextWeek: event.week.next(),
          ),
        );

        event.week.maybeWhen(
          realization: () async => oneRmBloc.add(
            OneRmEvent.generateAndSave(
              exerciseId: event.exerciseId,
              oneRm: event.oneRm,
              incrementation: event.incrementation,
              month: event.month,
              repsDone: event.repsDone,
            ),
          ),
          deload: () async => monthBloc.add(
            MonthEvent.updateNextMonth(
              exerciseId: event.exerciseId,
              nextMonth: event.month.next,
            ),
          ),
          orElse: () {},
        );
      },
    );
  }

  Stream<WorkoutState> _handleMarkUndoneEvent(MarkUndone event) async* {
    yield const WorkoutState.markUndoneInProgress();

    final output = await event.id.fold(
      () {},
      (workoutId) async => workoutRepository.remove(workoutId),
    );

    Stream<WorkoutState> onFailure(WorkoutFailure failure) async* {
      yield WorkoutState.error(message: failure.toErrorMessage());
    }

    Stream<WorkoutState> onSuccess(Unit unit) async* {
      yield WorkoutState.markedUndone(
        exerciseId: event.exerciseId,
        month: event.month,
        oneRm: event.oneRm,
      );

      weekBloc.add(
        WeekEvent.updateNextWeek(
          exerciseId: event.exerciseId,
          nextWeek: event.week,
        ),
      );

      event.week.maybeWhen(
        //? remove onerm for this month ?
        realization: () async => oneRmBloc.add(
          OneRmEvent.generateAndSave(
            exerciseId: event.exerciseId,
            oneRm: event.oneRm,
            incrementation: event.incrementation,
            month: event.month,
            repsDone: some(WorkoutHelper.getTargetReps(event.month)),
          ),
        ),
        deload: () async => monthBloc.add(
          MonthEvent.updateNextMonth(
            exerciseId: event.exerciseId,
            nextMonth: event.month,
          ),
        ),
        orElse: () {},
      );
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<WorkoutState> _handleRemoveEvent(Remove event) async* {
    yield const WorkoutState.removeInProgress();

    final output = await workoutRepository.removeByExerciseId(event.exerciseId);

    yield* output.fold(
      (failure) async* {
        yield WorkoutState.error(message: failure.toErrorMessage());
      },
      (r) => null,
    );
  }
}

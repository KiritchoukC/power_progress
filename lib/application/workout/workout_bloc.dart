import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:power_progress/application/exercise/month/month_bloc.dart';
import 'package:power_progress/application/exercise/week/week_bloc.dart';
import 'package:power_progress/application/one_rm/one_rm_bloc.dart' as or_bloc;
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/month_workout.dart';
import 'package:power_progress/domain/workout/entities/workout.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';
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
  final WeekBloc weekBloc;
  final MonthBloc monthBloc;
  final or_bloc.OneRmBloc oneRmBloc;

  final IWorkoutRepository workoutRepository;

  WorkoutBloc({
    @required this.generateWorkout,
    @required this.markWorkoutDone,
    @required this.markWorkoutUndone,
    @required this.weekBloc,
    @required this.monthBloc,
    @required this.oneRmBloc,
    @required this.workoutRepository,
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
      remove: _handleRemoveEvent,
    );
  }

  Stream<WorkoutState> _handleGenerateEvent(Generate event) async* {
    yield const WorkoutState.generateInProgress();

    final output = await generateWorkout(
      GenerateWorkoutParams(
        exerciseId: event.exerciseId,
        month: event.month,
      ),
    );

    Stream<WorkoutState> onFailure(WorkoutFailure failure) async* {
      yield WorkoutState.error(message: failure.toErrorMessage());
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
        oneRm: event.oneRm,
      ),
    );

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
            or_bloc.OneRmEvent.generateAndSave(
              exerciseId: event.exerciseId,
              oneRm: event.oneRm,
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

    final output = await markWorkoutUndone(
      MarkWorkoutUndoneParams(
        id: event.id,
        exerciseId: event.exerciseId,
        week: event.week,
        month: event.month,
      ),
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
        accumulation: () async => monthBloc.add(
          MonthEvent.updateNextMonth(
            exerciseId: event.exerciseId,
            nextMonth: event.month,
          ),
        ),
        realization: () async => oneRmBloc.add(
          or_bloc.OneRmEvent.generateAndSave(
            exerciseId: event.exerciseId,
            oneRm: event.oneRm,
            month: event.month,
            repsDone: some(WorkoutHelper.getTargetReps(event.month)),
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

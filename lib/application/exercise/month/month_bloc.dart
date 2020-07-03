import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/exercise_failure.dart';
import 'package:power_progress/domain/exercise/i_exercise_repository.dart';

part 'month_event.dart';
part 'month_state.dart';
part 'month_bloc.freezed.dart';

class MonthBloc extends Bloc<MonthEvent, MonthState> {
  final IExerciseRepository exerciseRepository;

  MonthBloc({
    @required this.exerciseRepository,
  });

  @override
  MonthState get initialState => const MonthState.initial(exerciseId: 0);

  @override
  Stream<MonthState> mapEventToState(
    MonthEvent event,
  ) async* {
    yield* event.map(
      updateNextMonth: _handleUpdateNextMonthEvent,
      fetch: _handleFetchEvent,
    );
  }

  Stream<MonthState> _handleUpdateNextMonthEvent(UpdateNextMonth event) async* {
    yield MonthState.monthUpdateInProgress(exerciseId: event.exerciseId);

    final output = await exerciseRepository.updateNextMonth(event.exerciseId, event.nextMonth);

    Stream<MonthState> onFailure(ExerciseFailure failure) async* {
      yield MonthState.error(exerciseId: event.exerciseId, message: failure.toErrorMessage());
    }

    Stream<MonthState> onSuccess(Unit unit) async* {
      yield MonthState.monthUpdated(exerciseId: event.exerciseId, month: event.nextMonth);
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<MonthState> _handleFetchEvent(Fetch event) async* {
    yield MonthState.fetchInProgress(exerciseId: event.exerciseId);

    final output = await exerciseRepository.getById(event.exerciseId);

    Stream<MonthState> onFailure(ExerciseFailure failure) async* {
      yield MonthState.error(exerciseId: event.exerciseId, message: failure.toErrorMessage());
    }

    Stream<MonthState> onSuccess(Option<Exercise> exerciseOption) async* {
      yield* exerciseOption.fold(
        () async* {
          yield MonthState.error(
            exerciseId: event.exerciseId,
            message: 'This item does not exist.',
          );
        },
        (exercise) async* {
          yield MonthState.fetched(exerciseId: event.exerciseId, month: exercise.month);
        },
      );
    }

    yield* output.fold(onFailure, onSuccess);
  }
}

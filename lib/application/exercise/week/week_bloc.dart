import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/week.dart';
import 'package:power_progress/domain/exercise/usecases/update_exercise_next_week.dart';

part 'week_event.dart';
part 'week_state.dart';
part 'week_bloc.freezed.dart';

class WeekBloc extends Bloc<WeekEvent, WeekState> {
  final UpdateExerciseNextWeek updateExerciseNextWeek;

  WeekBloc({
    @required this.updateExerciseNextWeek,
  });

  @override
  WeekState get initialState => const WeekState.initial();

  @override
  Stream<WeekState> mapEventToState(
    WeekEvent event,
  ) async* {
    yield* _handleUpdateNextWeekEvent(event);
  }

  Stream<WeekState> _handleUpdateNextWeekEvent(WeekEvent event) async* {
    yield const WeekState.weekUpdateInProgress();

    final output = await updateExerciseNextWeek(
      UpdateExerciseNextWeekParams(
        exerciseId: event.exerciseId,
        nextWeek: event.nextWeek,
      ),
    );

    Stream<WeekState> onFailure(ExerciseFailure failure) async* {
      yield WeekState.error(message: failure.toErrorMessage());
    }

    Stream<WeekState> onSuccess(Unit unit) async* {
      yield WeekState.weekUpdated(week: Week(event.nextWeek));
    }

    yield* output.fold(onFailure, onSuccess);
  }
}

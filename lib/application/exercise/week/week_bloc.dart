import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:power_progress/domain/core/week_enum.dart';
import 'package:power_progress/domain/exercise/exercise_failure.dart';
import 'package:power_progress/domain/exercise/i_exercise_repository.dart';
import 'package:power_progress/domain/exercise/value_objects/week.dart';

part 'week_event.dart';
part 'week_state.dart';
part 'week_bloc.freezed.dart';

class WeekBloc extends Bloc<WeekEvent, WeekState> {
  final IExerciseRepository exerciseRepository;

  WeekBloc({
    @required this.exerciseRepository,
  });

  @override
  WeekState get initialState => const WeekState.initial(exerciseId: 0);

  @override
  Stream<WeekState> mapEventToState(
    WeekEvent event,
  ) async* {
    yield* _handleUpdateNextWeekEvent(event);
  }

  Stream<WeekState> _handleUpdateNextWeekEvent(WeekEvent event) async* {
    yield WeekState.weekUpdateInProgress(exerciseId: event.exerciseId);

    final output = await exerciseRepository.updateNextWeek(event.exerciseId, event.nextWeek);

    Stream<WeekState> onFailure(ExerciseFailure failure) async* {
      yield WeekState.error(exerciseId: event.exerciseId, message: failure.toErrorMessage());
    }

    Stream<WeekState> onSuccess(Unit unit) async* {
      yield WeekState.weekUpdated(exerciseId: event.exerciseId, week: Week(event.nextWeek));
    }

    yield* output.fold(onFailure, onSuccess);
  }
}

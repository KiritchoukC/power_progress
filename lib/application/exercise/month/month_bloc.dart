import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/domain/core/value_objects/month.dart';
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
  MonthState get initialState => const MonthState.initial();

  @override
  Stream<MonthState> mapEventToState(
    MonthEvent event,
  ) async* {
    yield* _handleUpdateNextMonthEvent(event);
  }

  Stream<MonthState> _handleUpdateNextMonthEvent(MonthEvent event) async* {
    yield const MonthState.monthUpdateInProgress();

    final output = await exerciseRepository.updateNextMonth(event.exerciseId, event.nextMonth);

    Stream<MonthState> onFailure(ExerciseFailure failure) async* {
      yield MonthState.error(message: failure.toErrorMessage());
    }

    Stream<MonthState> onSuccess(Unit unit) async* {
      yield MonthState.monthUpdated(month: event.nextMonth);
    }

    yield* output.fold(onFailure, onSuccess);
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/exercise/exercise_failure.dart';
import 'package:power_progress/domain/exercise/i_exercise_repository.dart';

part 'month_cubit.freezed.dart';
part 'month_state.dart';

class MonthCubit extends Cubit<MonthState> {
  final IExerciseRepository exerciseRepository;

  MonthCubit({
    @required this.exerciseRepository,
  }) : super(const MonthState.initial(exerciseId: 0));

  Future updateNextMonth({@required int exerciseId, @required Month nextMonth}) async {
    emit(MonthState.monthUpdateInProgress(exerciseId: exerciseId));

    final output = await exerciseRepository.updateNextMonth(exerciseId, nextMonth);

    output.fold(
      (failure) => emit(MonthState.error(
        exerciseId: exerciseId,
        message: failure.toErrorMessage(),
      )),
      (_) => emit(MonthState.monthUpdated(exerciseId: exerciseId, month: nextMonth)),
    );
  }

  Future fetch({@required int exerciseId}) async {
    emit(MonthState.fetchInProgress(exerciseId: exerciseId));

    final output = await exerciseRepository.getById(exerciseId);

    output.fold(
      (failure) =>
          emit(MonthState.error(exerciseId: exerciseId, message: failure.toErrorMessage())),
      (exerciseOption) => exerciseOption.fold(
        () => emit(MonthState.error(
          exerciseId: exerciseId,
          message: 'This item does not exist.',
        )),
        (exercise) => emit(MonthState.fetched(exerciseId: exerciseId, month: exercise.month)),
      ),
    );
  }
}

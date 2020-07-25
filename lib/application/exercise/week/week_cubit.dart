import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_progress/domain/exercise/exercise_failure.dart';

import 'package:power_progress/domain/exercise/i_exercise_repository.dart';
import 'package:power_progress/domain/exercise/value_objects/week.dart';
import 'package:power_progress/domain/shared/week_enum.dart';

part 'week_cubit.freezed.dart';
part 'week_state.dart';

class WeekCubit extends Cubit<WeekState> {
  final IExerciseRepository exerciseRepository;

  WeekCubit({
    @required this.exerciseRepository,
  }) : super(const WeekState.initial(exerciseId: 0));

  Future updateNextWeek(int exerciseId, WeekEnum nextWeek) async {
    emit(WeekState.weekUpdateInProgress(exerciseId: exerciseId));

    final output = await exerciseRepository.updateNextWeek(exerciseId, nextWeek);

    output.fold(
      (failure) => emit(WeekState.error(exerciseId: exerciseId, message: failure.toErrorMessage())),
      (_) => emit(WeekState.weekUpdated(exerciseId: exerciseId, week: Week(nextWeek))),
    );
  }
}

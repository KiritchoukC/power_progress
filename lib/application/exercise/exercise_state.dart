part of 'exercise_bloc.dart';

@freezed
abstract class ExerciseState with _$ExerciseState {
  const factory ExerciseState.initial() = Initial;

  const factory ExerciseState.addInProgress() = AddInProgress;
  const factory ExerciseState.added() = Added;

  const factory ExerciseState.fetchInProgress() = FetchInProgress;
  const factory ExerciseState.fetched({@required List<Exercise> exercises}) = Fetched;

  const factory ExerciseState.removeInProgress() = RemoveInProgress;
  const factory ExerciseState.removed() = Removed;

  const factory ExerciseState.selected({@required List<int> selectedIds}) = Selected;
  const factory ExerciseState.unselected({@required List<int> unselectedIds}) = Unselected;

  const factory ExerciseState.monthUpdateInProgress() = MonthUpdateInProgress;
  const factory ExerciseState.monthUpdated() = MonthUpdated;

  const factory ExerciseState.error({@required String message}) = Error;
}

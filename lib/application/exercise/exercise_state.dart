part of 'exercise_cubit.dart';

@freezed
abstract class ExerciseState with _$ExerciseState {
  const factory ExerciseState.initial() = Initial;

  const factory ExerciseState.addInProgress() = AddInProgress;
  const factory ExerciseState.added() = Added;

  const factory ExerciseState.fetchInProgress() = FetchInProgress;
  const factory ExerciseState.fetched({@required List<Exercise> exercises}) = Fetched;

  const factory ExerciseState.removeInProgress() = RemoveInProgress;
  const factory ExerciseState.removed() = Removed;

  const factory ExerciseState.error({@required String message}) = Error;
}

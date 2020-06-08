part of 'workout_bloc.dart';

@freezed
abstract class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = Initial;
  const factory WorkoutState.generateInProgress() = GenerateInProgress;
  const factory WorkoutState.generated({
    @required MonthWorkout workout,
    @required Month month,
  }) = Generated;
  const factory WorkoutState.markDoneInProgress() = MarkDoneInProgress;
  const factory WorkoutState.markedDone() = MarkedDone;
  const factory WorkoutState.markUndoneInProgress() = MarkUndoneInProgress;
  const factory WorkoutState.markedUndone() = MarkedUndone;
  const factory WorkoutState.error({@required String message}) = Error;
}

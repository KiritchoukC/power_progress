part of 'workout_bloc.dart';

@freezed
abstract class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.generate({
    @required int exerciseId,
    @required Month month,
  }) = Generate;
  const factory WorkoutEvent.markDone({
    @required int exerciseId,
    @required Month month,
    @required WeekEnum week,
    @required OneRm oneRm,
    @required Option<int> repsDone,
  }) = MarkDone;
  const factory WorkoutEvent.markUndone({
    @required Option<int> id,
    @required int exerciseId,
    @required WeekEnum week,
    @required Month month,
    @required OneRm oneRm,
  }) = MarkUndone;
  const factory WorkoutEvent.remove({@required int exerciseId}) = Remove;
}

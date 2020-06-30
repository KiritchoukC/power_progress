part of 'exercise_bloc.dart';

@freezed
abstract class ExerciseEvent with _$ExerciseEvent {
  const factory ExerciseEvent.add({@required Exercise exercise, @required OneRm oneRm}) = Add;
  const factory ExerciseEvent.fetch() = Fetch;
  const factory ExerciseEvent.selectionMode(
      {@required bool isInSelectionMode, @required List<int> selectedIds}) = SelectionMode;
  const factory ExerciseEvent.remove({@required List<int> ids}) = Remove;
}

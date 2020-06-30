part of 'selection_bloc.dart';

@freezed
abstract class SelectionEvent with _$SelectionEvent {
  const factory SelectionEvent.switchMode(
      {@required bool isInSelectionMode, @required List<int> selectedIds}) = SwitchMode;
}

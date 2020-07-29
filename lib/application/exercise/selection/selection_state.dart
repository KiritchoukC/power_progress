part of 'selection_cubit.dart';

@freezed
abstract class SelectionState with _$SelectionState {
  const factory SelectionState.initial() = Initial;

  const factory SelectionState.selected({@required List<int> selectedIds}) = Selected;
  const factory SelectionState.unselected({@required List<int> unselectedIds}) = Unselected;
}

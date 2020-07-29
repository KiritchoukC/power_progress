import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_state.dart';
part 'selection_cubit.freezed.dart';

class SelectionCubit extends Cubit<SelectionState> {
  SelectionCubit() : super(const SelectionState.initial());

  void select({@required List<int> selectedIds}) =>
      emit(SelectionState.selected(selectedIds: selectedIds));

  void unselect({@required List<int> unselectedIds}) =>
      emit(SelectionState.unselected(unselectedIds: unselectedIds));
}

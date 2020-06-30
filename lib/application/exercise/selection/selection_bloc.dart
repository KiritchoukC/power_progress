import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_event.dart';
part 'selection_state.dart';
part 'selection_bloc.freezed.dart';

class SelectionBloc extends Bloc<SelectionEvent, SelectionState> {
  @override
  SelectionState get initialState => const SelectionState.initial();

  @override
  Stream<SelectionState> mapEventToState(SelectionEvent event) async* {
    yield* _handleSelectionModeEvent(event);
  }

  Stream<SelectionState> _handleSelectionModeEvent(SelectionEvent event) async* {
    if (event.isInSelectionMode) {
      yield SelectionState.selected(selectedIds: event.selectedIds);
    } else {
      yield SelectionState.unselected(unselectedIds: event.selectedIds);
    }
  }
}

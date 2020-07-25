// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SelectionEventTearOff {
  const _$SelectionEventTearOff();

// ignore: unused_element
  SwitchMode switchMode(
      {@required bool isInSelectionMode, @required List<int> selectedIds}) {
    return SwitchMode(
      isInSelectionMode: isInSelectionMode,
      selectedIds: selectedIds,
    );
  }
}

// ignore: unused_element
const $SelectionEvent = _$SelectionEventTearOff();

mixin _$SelectionEvent {
  bool get isInSelectionMode;
  List<int> get selectedIds;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result switchMode(bool isInSelectionMode, List<int> selectedIds),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result switchMode(bool isInSelectionMode, List<int> selectedIds),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result switchMode(SwitchMode value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result switchMode(SwitchMode value),
    @required Result orElse(),
  });

  $SelectionEventCopyWith<SelectionEvent> get copyWith;
}

abstract class $SelectionEventCopyWith<$Res> {
  factory $SelectionEventCopyWith(
          SelectionEvent value, $Res Function(SelectionEvent) then) =
      _$SelectionEventCopyWithImpl<$Res>;
  $Res call({bool isInSelectionMode, List<int> selectedIds});
}

class _$SelectionEventCopyWithImpl<$Res>
    implements $SelectionEventCopyWith<$Res> {
  _$SelectionEventCopyWithImpl(this._value, this._then);

  final SelectionEvent _value;
  // ignore: unused_field
  final $Res Function(SelectionEvent) _then;

  @override
  $Res call({
    Object isInSelectionMode = freezed,
    Object selectedIds = freezed,
  }) {
    return _then(_value.copyWith(
      isInSelectionMode: isInSelectionMode == freezed
          ? _value.isInSelectionMode
          : isInSelectionMode as bool,
      selectedIds: selectedIds == freezed
          ? _value.selectedIds
          : selectedIds as List<int>,
    ));
  }
}

abstract class $SwitchModeCopyWith<$Res>
    implements $SelectionEventCopyWith<$Res> {
  factory $SwitchModeCopyWith(
          SwitchMode value, $Res Function(SwitchMode) then) =
      _$SwitchModeCopyWithImpl<$Res>;
  @override
  $Res call({bool isInSelectionMode, List<int> selectedIds});
}

class _$SwitchModeCopyWithImpl<$Res> extends _$SelectionEventCopyWithImpl<$Res>
    implements $SwitchModeCopyWith<$Res> {
  _$SwitchModeCopyWithImpl(SwitchMode _value, $Res Function(SwitchMode) _then)
      : super(_value, (v) => _then(v as SwitchMode));

  @override
  SwitchMode get _value => super._value as SwitchMode;

  @override
  $Res call({
    Object isInSelectionMode = freezed,
    Object selectedIds = freezed,
  }) {
    return _then(SwitchMode(
      isInSelectionMode: isInSelectionMode == freezed
          ? _value.isInSelectionMode
          : isInSelectionMode as bool,
      selectedIds: selectedIds == freezed
          ? _value.selectedIds
          : selectedIds as List<int>,
    ));
  }
}

class _$SwitchMode with DiagnosticableTreeMixin implements SwitchMode {
  const _$SwitchMode(
      {@required this.isInSelectionMode, @required this.selectedIds})
      : assert(isInSelectionMode != null),
        assert(selectedIds != null);

  @override
  final bool isInSelectionMode;
  @override
  final List<int> selectedIds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectionEvent.switchMode(isInSelectionMode: $isInSelectionMode, selectedIds: $selectedIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelectionEvent.switchMode'))
      ..add(DiagnosticsProperty('isInSelectionMode', isInSelectionMode))
      ..add(DiagnosticsProperty('selectedIds', selectedIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SwitchMode &&
            (identical(other.isInSelectionMode, isInSelectionMode) ||
                const DeepCollectionEquality()
                    .equals(other.isInSelectionMode, isInSelectionMode)) &&
            (identical(other.selectedIds, selectedIds) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIds, selectedIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isInSelectionMode) ^
      const DeepCollectionEquality().hash(selectedIds);

  @override
  $SwitchModeCopyWith<SwitchMode> get copyWith =>
      _$SwitchModeCopyWithImpl<SwitchMode>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result switchMode(bool isInSelectionMode, List<int> selectedIds),
  }) {
    assert(switchMode != null);
    return switchMode(isInSelectionMode, selectedIds);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result switchMode(bool isInSelectionMode, List<int> selectedIds),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchMode != null) {
      return switchMode(isInSelectionMode, selectedIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result switchMode(SwitchMode value),
  }) {
    assert(switchMode != null);
    return switchMode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result switchMode(SwitchMode value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchMode != null) {
      return switchMode(this);
    }
    return orElse();
  }
}

abstract class SwitchMode implements SelectionEvent {
  const factory SwitchMode(
      {@required bool isInSelectionMode,
      @required List<int> selectedIds}) = _$SwitchMode;

  @override
  bool get isInSelectionMode;
  @override
  List<int> get selectedIds;
  @override
  $SwitchModeCopyWith<SwitchMode> get copyWith;
}

class _$SelectionStateTearOff {
  const _$SelectionStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Selected selected({@required List<int> selectedIds}) {
    return Selected(
      selectedIds: selectedIds,
    );
  }

// ignore: unused_element
  Unselected unselected({@required List<int> unselectedIds}) {
    return Unselected(
      unselectedIds: unselectedIds,
    );
  }
}

// ignore: unused_element
const $SelectionState = _$SelectionStateTearOff();

mixin _$SelectionState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    @required Result orElse(),
  });
}

abstract class $SelectionStateCopyWith<$Res> {
  factory $SelectionStateCopyWith(
          SelectionState value, $Res Function(SelectionState) then) =
      _$SelectionStateCopyWithImpl<$Res>;
}

class _$SelectionStateCopyWithImpl<$Res>
    implements $SelectionStateCopyWith<$Res> {
  _$SelectionStateCopyWithImpl(this._value, this._then);

  final SelectionState _value;
  // ignore: unused_field
  final $Res Function(SelectionState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$SelectionStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectionState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SelectionState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
  }) {
    assert(initial != null);
    assert(selected != null);
    assert(unselected != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
  }) {
    assert(initial != null);
    assert(selected != null);
    assert(unselected != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SelectionState {
  const factory Initial() = _$Initial;
}

abstract class $SelectedCopyWith<$Res> {
  factory $SelectedCopyWith(Selected value, $Res Function(Selected) then) =
      _$SelectedCopyWithImpl<$Res>;
  $Res call({List<int> selectedIds});
}

class _$SelectedCopyWithImpl<$Res> extends _$SelectionStateCopyWithImpl<$Res>
    implements $SelectedCopyWith<$Res> {
  _$SelectedCopyWithImpl(Selected _value, $Res Function(Selected) _then)
      : super(_value, (v) => _then(v as Selected));

  @override
  Selected get _value => super._value as Selected;

  @override
  $Res call({
    Object selectedIds = freezed,
  }) {
    return _then(Selected(
      selectedIds: selectedIds == freezed
          ? _value.selectedIds
          : selectedIds as List<int>,
    ));
  }
}

class _$Selected with DiagnosticableTreeMixin implements Selected {
  const _$Selected({@required this.selectedIds}) : assert(selectedIds != null);

  @override
  final List<int> selectedIds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectionState.selected(selectedIds: $selectedIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelectionState.selected'))
      ..add(DiagnosticsProperty('selectedIds', selectedIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Selected &&
            (identical(other.selectedIds, selectedIds) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIds, selectedIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedIds);

  @override
  $SelectedCopyWith<Selected> get copyWith =>
      _$SelectedCopyWithImpl<Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
  }) {
    assert(initial != null);
    assert(selected != null);
    assert(unselected != null);
    return selected(selectedIds);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selected != null) {
      return selected(selectedIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
  }) {
    assert(initial != null);
    assert(selected != null);
    assert(unselected != null);
    return selected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class Selected implements SelectionState {
  const factory Selected({@required List<int> selectedIds}) = _$Selected;

  List<int> get selectedIds;
  $SelectedCopyWith<Selected> get copyWith;
}

abstract class $UnselectedCopyWith<$Res> {
  factory $UnselectedCopyWith(
          Unselected value, $Res Function(Unselected) then) =
      _$UnselectedCopyWithImpl<$Res>;
  $Res call({List<int> unselectedIds});
}

class _$UnselectedCopyWithImpl<$Res> extends _$SelectionStateCopyWithImpl<$Res>
    implements $UnselectedCopyWith<$Res> {
  _$UnselectedCopyWithImpl(Unselected _value, $Res Function(Unselected) _then)
      : super(_value, (v) => _then(v as Unselected));

  @override
  Unselected get _value => super._value as Unselected;

  @override
  $Res call({
    Object unselectedIds = freezed,
  }) {
    return _then(Unselected(
      unselectedIds: unselectedIds == freezed
          ? _value.unselectedIds
          : unselectedIds as List<int>,
    ));
  }
}

class _$Unselected with DiagnosticableTreeMixin implements Unselected {
  const _$Unselected({@required this.unselectedIds})
      : assert(unselectedIds != null);

  @override
  final List<int> unselectedIds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectionState.unselected(unselectedIds: $unselectedIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelectionState.unselected'))
      ..add(DiagnosticsProperty('unselectedIds', unselectedIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Unselected &&
            (identical(other.unselectedIds, unselectedIds) ||
                const DeepCollectionEquality()
                    .equals(other.unselectedIds, unselectedIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(unselectedIds);

  @override
  $UnselectedCopyWith<Unselected> get copyWith =>
      _$UnselectedCopyWithImpl<Unselected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
  }) {
    assert(initial != null);
    assert(selected != null);
    assert(unselected != null);
    return unselected(unselectedIds);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unselected != null) {
      return unselected(unselectedIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
  }) {
    assert(initial != null);
    assert(selected != null);
    assert(unselected != null);
    return unselected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unselected != null) {
      return unselected(this);
    }
    return orElse();
  }
}

abstract class Unselected implements SelectionState {
  const factory Unselected({@required List<int> unselectedIds}) = _$Unselected;

  List<int> get unselectedIds;
  $UnselectedCopyWith<Unselected> get copyWith;
}

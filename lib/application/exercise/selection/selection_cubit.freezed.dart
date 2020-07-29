// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'selection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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

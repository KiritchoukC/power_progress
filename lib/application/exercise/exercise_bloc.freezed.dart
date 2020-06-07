// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseEventTearOff {
  const _$ExerciseEventTearOff();

  Add add({@required Exercise exercise}) {
    return Add(
      exercise: exercise,
    );
  }

  Fetch fetch() {
    return const Fetch();
  }

  SelectionMode selectionMode(
      {@required bool isInSelectionMode, @required List<int> selectedIds}) {
    return SelectionMode(
      isInSelectionMode: isInSelectionMode,
      selectedIds: selectedIds,
    );
  }

  Remove remove({@required List<int> ids}) {
    return Remove(
      ids: ids,
    );
  }
}

// ignore: unused_element
const $ExerciseEvent = _$ExerciseEventTearOff();

mixin _$ExerciseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(Exercise exercise),
    @required Result fetch(),
    @required
        Result selectionMode(bool isInSelectionMode, List<int> selectedIds),
    @required Result remove(List<int> ids),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(Exercise exercise),
    Result fetch(),
    Result selectionMode(bool isInSelectionMode, List<int> selectedIds),
    Result remove(List<int> ids),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(Add value),
    @required Result fetch(Fetch value),
    @required Result selectionMode(SelectionMode value),
    @required Result remove(Remove value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(Add value),
    Result fetch(Fetch value),
    Result selectionMode(SelectionMode value),
    Result remove(Remove value),
    @required Result orElse(),
  });
}

abstract class $ExerciseEventCopyWith<$Res> {
  factory $ExerciseEventCopyWith(
          ExerciseEvent value, $Res Function(ExerciseEvent) then) =
      _$ExerciseEventCopyWithImpl<$Res>;
}

class _$ExerciseEventCopyWithImpl<$Res>
    implements $ExerciseEventCopyWith<$Res> {
  _$ExerciseEventCopyWithImpl(this._value, this._then);

  final ExerciseEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseEvent) _then;
}

abstract class $AddCopyWith<$Res> {
  factory $AddCopyWith(Add value, $Res Function(Add) then) =
      _$AddCopyWithImpl<$Res>;
  $Res call({Exercise exercise});
}

class _$AddCopyWithImpl<$Res> extends _$ExerciseEventCopyWithImpl<$Res>
    implements $AddCopyWith<$Res> {
  _$AddCopyWithImpl(Add _value, $Res Function(Add) _then)
      : super(_value, (v) => _then(v as Add));

  @override
  Add get _value => super._value as Add;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(Add(
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
    ));
  }
}

class _$Add with DiagnosticableTreeMixin implements Add {
  const _$Add({@required this.exercise}) : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseEvent.add(exercise: $exercise)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseEvent.add'))
      ..add(DiagnosticsProperty('exercise', exercise));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Add &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  $AddCopyWith<Add> get copyWith => _$AddCopyWithImpl<Add>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(Exercise exercise),
    @required Result fetch(),
    @required
        Result selectionMode(bool isInSelectionMode, List<int> selectedIds),
    @required Result remove(List<int> ids),
  }) {
    assert(add != null);
    assert(fetch != null);
    assert(selectionMode != null);
    assert(remove != null);
    return add(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(Exercise exercise),
    Result fetch(),
    Result selectionMode(bool isInSelectionMode, List<int> selectedIds),
    Result remove(List<int> ids),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(Add value),
    @required Result fetch(Fetch value),
    @required Result selectionMode(SelectionMode value),
    @required Result remove(Remove value),
  }) {
    assert(add != null);
    assert(fetch != null);
    assert(selectionMode != null);
    assert(remove != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(Add value),
    Result fetch(Fetch value),
    Result selectionMode(SelectionMode value),
    Result remove(Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements ExerciseEvent {
  const factory Add({@required Exercise exercise}) = _$Add;

  Exercise get exercise;
  $AddCopyWith<Add> get copyWith;
}

abstract class $FetchCopyWith<$Res> {
  factory $FetchCopyWith(Fetch value, $Res Function(Fetch) then) =
      _$FetchCopyWithImpl<$Res>;
}

class _$FetchCopyWithImpl<$Res> extends _$ExerciseEventCopyWithImpl<$Res>
    implements $FetchCopyWith<$Res> {
  _$FetchCopyWithImpl(Fetch _value, $Res Function(Fetch) _then)
      : super(_value, (v) => _then(v as Fetch));

  @override
  Fetch get _value => super._value as Fetch;
}

class _$Fetch with DiagnosticableTreeMixin implements Fetch {
  const _$Fetch();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ExerciseEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(Exercise exercise),
    @required Result fetch(),
    @required
        Result selectionMode(bool isInSelectionMode, List<int> selectedIds),
    @required Result remove(List<int> ids),
  }) {
    assert(add != null);
    assert(fetch != null);
    assert(selectionMode != null);
    assert(remove != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(Exercise exercise),
    Result fetch(),
    Result selectionMode(bool isInSelectionMode, List<int> selectedIds),
    Result remove(List<int> ids),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(Add value),
    @required Result fetch(Fetch value),
    @required Result selectionMode(SelectionMode value),
    @required Result remove(Remove value),
  }) {
    assert(add != null);
    assert(fetch != null);
    assert(selectionMode != null);
    assert(remove != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(Add value),
    Result fetch(Fetch value),
    Result selectionMode(SelectionMode value),
    Result remove(Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements ExerciseEvent {
  const factory Fetch() = _$Fetch;
}

abstract class $SelectionModeCopyWith<$Res> {
  factory $SelectionModeCopyWith(
          SelectionMode value, $Res Function(SelectionMode) then) =
      _$SelectionModeCopyWithImpl<$Res>;
  $Res call({bool isInSelectionMode, List<int> selectedIds});
}

class _$SelectionModeCopyWithImpl<$Res>
    extends _$ExerciseEventCopyWithImpl<$Res>
    implements $SelectionModeCopyWith<$Res> {
  _$SelectionModeCopyWithImpl(
      SelectionMode _value, $Res Function(SelectionMode) _then)
      : super(_value, (v) => _then(v as SelectionMode));

  @override
  SelectionMode get _value => super._value as SelectionMode;

  @override
  $Res call({
    Object isInSelectionMode = freezed,
    Object selectedIds = freezed,
  }) {
    return _then(SelectionMode(
      isInSelectionMode: isInSelectionMode == freezed
          ? _value.isInSelectionMode
          : isInSelectionMode as bool,
      selectedIds: selectedIds == freezed
          ? _value.selectedIds
          : selectedIds as List<int>,
    ));
  }
}

class _$SelectionMode with DiagnosticableTreeMixin implements SelectionMode {
  const _$SelectionMode(
      {@required this.isInSelectionMode, @required this.selectedIds})
      : assert(isInSelectionMode != null),
        assert(selectedIds != null);

  @override
  final bool isInSelectionMode;
  @override
  final List<int> selectedIds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseEvent.selectionMode(isInSelectionMode: $isInSelectionMode, selectedIds: $selectedIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseEvent.selectionMode'))
      ..add(DiagnosticsProperty('isInSelectionMode', isInSelectionMode))
      ..add(DiagnosticsProperty('selectedIds', selectedIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectionMode &&
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
  $SelectionModeCopyWith<SelectionMode> get copyWith =>
      _$SelectionModeCopyWithImpl<SelectionMode>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(Exercise exercise),
    @required Result fetch(),
    @required
        Result selectionMode(bool isInSelectionMode, List<int> selectedIds),
    @required Result remove(List<int> ids),
  }) {
    assert(add != null);
    assert(fetch != null);
    assert(selectionMode != null);
    assert(remove != null);
    return selectionMode(isInSelectionMode, selectedIds);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(Exercise exercise),
    Result fetch(),
    Result selectionMode(bool isInSelectionMode, List<int> selectedIds),
    Result remove(List<int> ids),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectionMode != null) {
      return selectionMode(isInSelectionMode, selectedIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(Add value),
    @required Result fetch(Fetch value),
    @required Result selectionMode(SelectionMode value),
    @required Result remove(Remove value),
  }) {
    assert(add != null);
    assert(fetch != null);
    assert(selectionMode != null);
    assert(remove != null);
    return selectionMode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(Add value),
    Result fetch(Fetch value),
    Result selectionMode(SelectionMode value),
    Result remove(Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectionMode != null) {
      return selectionMode(this);
    }
    return orElse();
  }
}

abstract class SelectionMode implements ExerciseEvent {
  const factory SelectionMode(
      {@required bool isInSelectionMode,
      @required List<int> selectedIds}) = _$SelectionMode;

  bool get isInSelectionMode;
  List<int> get selectedIds;
  $SelectionModeCopyWith<SelectionMode> get copyWith;
}

abstract class $RemoveCopyWith<$Res> {
  factory $RemoveCopyWith(Remove value, $Res Function(Remove) then) =
      _$RemoveCopyWithImpl<$Res>;
  $Res call({List<int> ids});
}

class _$RemoveCopyWithImpl<$Res> extends _$ExerciseEventCopyWithImpl<$Res>
    implements $RemoveCopyWith<$Res> {
  _$RemoveCopyWithImpl(Remove _value, $Res Function(Remove) _then)
      : super(_value, (v) => _then(v as Remove));

  @override
  Remove get _value => super._value as Remove;

  @override
  $Res call({
    Object ids = freezed,
  }) {
    return _then(Remove(
      ids: ids == freezed ? _value.ids : ids as List<int>,
    ));
  }
}

class _$Remove with DiagnosticableTreeMixin implements Remove {
  const _$Remove({@required this.ids}) : assert(ids != null);

  @override
  final List<int> ids;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseEvent.remove(ids: $ids)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseEvent.remove'))
      ..add(DiagnosticsProperty('ids', ids));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Remove &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ids);

  @override
  $RemoveCopyWith<Remove> get copyWith =>
      _$RemoveCopyWithImpl<Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(Exercise exercise),
    @required Result fetch(),
    @required
        Result selectionMode(bool isInSelectionMode, List<int> selectedIds),
    @required Result remove(List<int> ids),
  }) {
    assert(add != null);
    assert(fetch != null);
    assert(selectionMode != null);
    assert(remove != null);
    return remove(ids);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(Exercise exercise),
    Result fetch(),
    Result selectionMode(bool isInSelectionMode, List<int> selectedIds),
    Result remove(List<int> ids),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(Add value),
    @required Result fetch(Fetch value),
    @required Result selectionMode(SelectionMode value),
    @required Result remove(Remove value),
  }) {
    assert(add != null);
    assert(fetch != null);
    assert(selectionMode != null);
    assert(remove != null);
    return remove(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(Add value),
    Result fetch(Fetch value),
    Result selectionMode(SelectionMode value),
    Result remove(Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class Remove implements ExerciseEvent {
  const factory Remove({@required List<int> ids}) = _$Remove;

  List<int> get ids;
  $RemoveCopyWith<Remove> get copyWith;
}

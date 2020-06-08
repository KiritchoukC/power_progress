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

class _$ExerciseStateTearOff {
  const _$ExerciseStateTearOff();

  Initial initial() {
    return const Initial();
  }

  AddInProgress addInProgress() {
    return const AddInProgress();
  }

  Added added() {
    return const Added();
  }

  FetchInProgress fetchInProgress() {
    return const FetchInProgress();
  }

  Fetched fetched({@required List<Exercise> exercises}) {
    return Fetched(
      exercises: exercises,
    );
  }

  RemoveInProgress removeInProgress() {
    return const RemoveInProgress();
  }

  Removed removed() {
    return const Removed();
  }

  Selected selected({@required List<int> selectedIds}) {
    return Selected(
      selectedIds: selectedIds,
    );
  }

  Unselected unselected({@required List<int> unselectedIds}) {
    return Unselected(
      unselectedIds: unselectedIds,
    );
  }

  Error error({@required String message}) {
    return Error(
      message: message,
    );
  }
}

// ignore: unused_element
const $ExerciseState = _$ExerciseStateTearOff();

mixin _$ExerciseState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $ExerciseStateCopyWith<$Res> {
  factory $ExerciseStateCopyWith(
          ExerciseState value, $Res Function(ExerciseState) then) =
      _$ExerciseStateCopyWithImpl<$Res>;
}

class _$ExerciseStateCopyWithImpl<$Res>
    implements $ExerciseStateCopyWith<$Res> {
  _$ExerciseStateCopyWithImpl(this._value, this._then);

  final ExerciseState _value;
  // ignore: unused_field
  final $Res Function(ExerciseState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
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
    return 'ExerciseState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ExerciseState.initial'));
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
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
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
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ExerciseState {
  const factory Initial() = _$Initial;
}

abstract class $AddInProgressCopyWith<$Res> {
  factory $AddInProgressCopyWith(
          AddInProgress value, $Res Function(AddInProgress) then) =
      _$AddInProgressCopyWithImpl<$Res>;
}

class _$AddInProgressCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res>
    implements $AddInProgressCopyWith<$Res> {
  _$AddInProgressCopyWithImpl(
      AddInProgress _value, $Res Function(AddInProgress) _then)
      : super(_value, (v) => _then(v as AddInProgress));

  @override
  AddInProgress get _value => super._value as AddInProgress;
}

class _$AddInProgress with DiagnosticableTreeMixin implements AddInProgress {
  const _$AddInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseState.addInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ExerciseState.addInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return addInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addInProgress != null) {
      return addInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return addInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addInProgress != null) {
      return addInProgress(this);
    }
    return orElse();
  }
}

abstract class AddInProgress implements ExerciseState {
  const factory AddInProgress() = _$AddInProgress;
}

abstract class $AddedCopyWith<$Res> {
  factory $AddedCopyWith(Added value, $Res Function(Added) then) =
      _$AddedCopyWithImpl<$Res>;
}

class _$AddedCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
    implements $AddedCopyWith<$Res> {
  _$AddedCopyWithImpl(Added _value, $Res Function(Added) _then)
      : super(_value, (v) => _then(v as Added));

  @override
  Added get _value => super._value as Added;
}

class _$Added with DiagnosticableTreeMixin implements Added {
  const _$Added();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseState.added()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ExerciseState.added'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Added);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return added();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return added(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class Added implements ExerciseState {
  const factory Added() = _$Added;
}

abstract class $FetchInProgressCopyWith<$Res> {
  factory $FetchInProgressCopyWith(
          FetchInProgress value, $Res Function(FetchInProgress) then) =
      _$FetchInProgressCopyWithImpl<$Res>;
}

class _$FetchInProgressCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res>
    implements $FetchInProgressCopyWith<$Res> {
  _$FetchInProgressCopyWithImpl(
      FetchInProgress _value, $Res Function(FetchInProgress) _then)
      : super(_value, (v) => _then(v as FetchInProgress));

  @override
  FetchInProgress get _value => super._value as FetchInProgress;
}

class _$FetchInProgress
    with DiagnosticableTreeMixin
    implements FetchInProgress {
  const _$FetchInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseState.fetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseState.fetchInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchInProgress != null) {
      return fetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class FetchInProgress implements ExerciseState {
  const factory FetchInProgress() = _$FetchInProgress;
}

abstract class $FetchedCopyWith<$Res> {
  factory $FetchedCopyWith(Fetched value, $Res Function(Fetched) then) =
      _$FetchedCopyWithImpl<$Res>;
  $Res call({List<Exercise> exercises});
}

class _$FetchedCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
    implements $FetchedCopyWith<$Res> {
  _$FetchedCopyWithImpl(Fetched _value, $Res Function(Fetched) _then)
      : super(_value, (v) => _then(v as Fetched));

  @override
  Fetched get _value => super._value as Fetched;

  @override
  $Res call({
    Object exercises = freezed,
  }) {
    return _then(Fetched(
      exercises:
          exercises == freezed ? _value.exercises : exercises as List<Exercise>,
    ));
  }
}

class _$Fetched with DiagnosticableTreeMixin implements Fetched {
  const _$Fetched({@required this.exercises}) : assert(exercises != null);

  @override
  final List<Exercise> exercises;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseState.fetched(exercises: $exercises)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseState.fetched'))
      ..add(DiagnosticsProperty('exercises', exercises));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fetched &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercises);

  @override
  $FetchedCopyWith<Fetched> get copyWith =>
      _$FetchedCopyWithImpl<Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return fetched(exercises);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetched != null) {
      return fetched(exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class Fetched implements ExerciseState {
  const factory Fetched({@required List<Exercise> exercises}) = _$Fetched;

  List<Exercise> get exercises;
  $FetchedCopyWith<Fetched> get copyWith;
}

abstract class $RemoveInProgressCopyWith<$Res> {
  factory $RemoveInProgressCopyWith(
          RemoveInProgress value, $Res Function(RemoveInProgress) then) =
      _$RemoveInProgressCopyWithImpl<$Res>;
}

class _$RemoveInProgressCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res>
    implements $RemoveInProgressCopyWith<$Res> {
  _$RemoveInProgressCopyWithImpl(
      RemoveInProgress _value, $Res Function(RemoveInProgress) _then)
      : super(_value, (v) => _then(v as RemoveInProgress));

  @override
  RemoveInProgress get _value => super._value as RemoveInProgress;
}

class _$RemoveInProgress
    with DiagnosticableTreeMixin
    implements RemoveInProgress {
  const _$RemoveInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseState.removeInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseState.removeInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RemoveInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return removeInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeInProgress != null) {
      return removeInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return removeInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeInProgress != null) {
      return removeInProgress(this);
    }
    return orElse();
  }
}

abstract class RemoveInProgress implements ExerciseState {
  const factory RemoveInProgress() = _$RemoveInProgress;
}

abstract class $RemovedCopyWith<$Res> {
  factory $RemovedCopyWith(Removed value, $Res Function(Removed) then) =
      _$RemovedCopyWithImpl<$Res>;
}

class _$RemovedCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
    implements $RemovedCopyWith<$Res> {
  _$RemovedCopyWithImpl(Removed _value, $Res Function(Removed) _then)
      : super(_value, (v) => _then(v as Removed));

  @override
  Removed get _value => super._value as Removed;
}

class _$Removed with DiagnosticableTreeMixin implements Removed {
  const _$Removed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseState.removed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ExerciseState.removed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Removed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return removed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removed != null) {
      return removed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return removed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class Removed implements ExerciseState {
  const factory Removed() = _$Removed;
}

abstract class $SelectedCopyWith<$Res> {
  factory $SelectedCopyWith(Selected value, $Res Function(Selected) then) =
      _$SelectedCopyWithImpl<$Res>;
  $Res call({List<int> selectedIds});
}

class _$SelectedCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
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
    return 'ExerciseState.selected(selectedIds: $selectedIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseState.selected'))
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
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return selected(selectedIds);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
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
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return selected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class Selected implements ExerciseState {
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

class _$UnselectedCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
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
    return 'ExerciseState.unselected(unselectedIds: $unselectedIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseState.unselected'))
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
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return unselected(unselectedIds);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
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
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return unselected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unselected != null) {
      return unselected(this);
    }
    return orElse();
  }
}

abstract class Unselected implements ExerciseState {
  const factory Unselected({@required List<int> unselectedIds}) = _$Unselected;

  List<int> get unselectedIds;
  $UnselectedCopyWith<Unselected> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ErrorCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addInProgress(),
    @required Result added(),
    @required Result fetchInProgress(),
    @required Result fetched(List<Exercise> exercises),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result selected(List<int> selectedIds),
    @required Result unselected(List<int> unselectedIds),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addInProgress(),
    Result added(),
    Result fetchInProgress(),
    Result fetched(List<Exercise> exercises),
    Result removeInProgress(),
    Result removed(),
    Result selected(List<int> selectedIds),
    Result unselected(List<int> unselectedIds),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result addInProgress(AddInProgress value),
    @required Result added(Added value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result selected(Selected value),
    @required Result unselected(Unselected value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(addInProgress != null);
    assert(added != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(selected != null);
    assert(unselected != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result addInProgress(AddInProgress value),
    Result added(Added value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result selected(Selected value),
    Result unselected(Unselected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ExerciseState {
  const factory Error({@required String message}) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}

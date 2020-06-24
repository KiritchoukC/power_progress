// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'week_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WeekEventTearOff {
  const _$WeekEventTearOff();

  UpdateNextWeek updateNextWeek(
      {@required int exerciseId, @required WeekEnum nextWeek}) {
    return UpdateNextWeek(
      exerciseId: exerciseId,
      nextWeek: nextWeek,
    );
  }
}

// ignore: unused_element
const $WeekEvent = _$WeekEventTearOff();

mixin _$WeekEvent {
  int get exerciseId;
  WeekEnum get nextWeek;

  $WeekEventCopyWith<WeekEvent> get copyWith;
}

abstract class $WeekEventCopyWith<$Res> {
  factory $WeekEventCopyWith(WeekEvent value, $Res Function(WeekEvent) then) =
      _$WeekEventCopyWithImpl<$Res>;
  $Res call({int exerciseId, WeekEnum nextWeek});

  $WeekEnumCopyWith<$Res> get nextWeek;
}

class _$WeekEventCopyWithImpl<$Res> implements $WeekEventCopyWith<$Res> {
  _$WeekEventCopyWithImpl(this._value, this._then);

  final WeekEvent _value;
  // ignore: unused_field
  final $Res Function(WeekEvent) _then;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object nextWeek = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      nextWeek: nextWeek == freezed ? _value.nextWeek : nextWeek as WeekEnum,
    ));
  }

  @override
  $WeekEnumCopyWith<$Res> get nextWeek {
    if (_value.nextWeek == null) {
      return null;
    }
    return $WeekEnumCopyWith<$Res>(_value.nextWeek, (value) {
      return _then(_value.copyWith(nextWeek: value));
    });
  }
}

abstract class $UpdateNextWeekCopyWith<$Res>
    implements $WeekEventCopyWith<$Res> {
  factory $UpdateNextWeekCopyWith(
          UpdateNextWeek value, $Res Function(UpdateNextWeek) then) =
      _$UpdateNextWeekCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId, WeekEnum nextWeek});

  @override
  $WeekEnumCopyWith<$Res> get nextWeek;
}

class _$UpdateNextWeekCopyWithImpl<$Res> extends _$WeekEventCopyWithImpl<$Res>
    implements $UpdateNextWeekCopyWith<$Res> {
  _$UpdateNextWeekCopyWithImpl(
      UpdateNextWeek _value, $Res Function(UpdateNextWeek) _then)
      : super(_value, (v) => _then(v as UpdateNextWeek));

  @override
  UpdateNextWeek get _value => super._value as UpdateNextWeek;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object nextWeek = freezed,
  }) {
    return _then(UpdateNextWeek(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      nextWeek: nextWeek == freezed ? _value.nextWeek : nextWeek as WeekEnum,
    ));
  }
}

class _$UpdateNextWeek implements UpdateNextWeek {
  const _$UpdateNextWeek({@required this.exerciseId, @required this.nextWeek})
      : assert(exerciseId != null),
        assert(nextWeek != null);

  @override
  final int exerciseId;
  @override
  final WeekEnum nextWeek;

  @override
  String toString() {
    return 'WeekEvent.updateNextWeek(exerciseId: $exerciseId, nextWeek: $nextWeek)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateNextWeek &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.nextWeek, nextWeek) ||
                const DeepCollectionEquality()
                    .equals(other.nextWeek, nextWeek)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(nextWeek);

  @override
  $UpdateNextWeekCopyWith<UpdateNextWeek> get copyWith =>
      _$UpdateNextWeekCopyWithImpl<UpdateNextWeek>(this, _$identity);
}

abstract class UpdateNextWeek implements WeekEvent {
  const factory UpdateNextWeek(
      {@required int exerciseId,
      @required WeekEnum nextWeek}) = _$UpdateNextWeek;

  @override
  int get exerciseId;
  @override
  WeekEnum get nextWeek;
  @override
  $UpdateNextWeekCopyWith<UpdateNextWeek> get copyWith;
}

class _$WeekStateTearOff {
  const _$WeekStateTearOff();

  Initial initial() {
    return const Initial();
  }

  WeekUpdateInProgress weekUpdateInProgress() {
    return const WeekUpdateInProgress();
  }

  WeekUpdated weekUpdated({@required Week week}) {
    return WeekUpdated(
      week: week,
    );
  }

  Error error({@required String message}) {
    return Error(
      message: message,
    );
  }
}

// ignore: unused_element
const $WeekState = _$WeekStateTearOff();

mixin _$WeekState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result weekUpdateInProgress(),
    @required Result weekUpdated(Week week),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result weekUpdateInProgress(),
    Result weekUpdated(Week week),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result weekUpdateInProgress(WeekUpdateInProgress value),
    @required Result weekUpdated(WeekUpdated value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result weekUpdateInProgress(WeekUpdateInProgress value),
    Result weekUpdated(WeekUpdated value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $WeekStateCopyWith<$Res> {
  factory $WeekStateCopyWith(WeekState value, $Res Function(WeekState) then) =
      _$WeekStateCopyWithImpl<$Res>;
}

class _$WeekStateCopyWithImpl<$Res> implements $WeekStateCopyWith<$Res> {
  _$WeekStateCopyWithImpl(this._value, this._then);

  final WeekState _value;
  // ignore: unused_field
  final $Res Function(WeekState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$WeekStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'WeekState.initial()';
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
    @required Result weekUpdateInProgress(),
    @required Result weekUpdated(Week week),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(weekUpdateInProgress != null);
    assert(weekUpdated != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result weekUpdateInProgress(),
    Result weekUpdated(Week week),
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
    @required Result weekUpdateInProgress(WeekUpdateInProgress value),
    @required Result weekUpdated(WeekUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(weekUpdateInProgress != null);
    assert(weekUpdated != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result weekUpdateInProgress(WeekUpdateInProgress value),
    Result weekUpdated(WeekUpdated value),
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

abstract class Initial implements WeekState {
  const factory Initial() = _$Initial;
}

abstract class $WeekUpdateInProgressCopyWith<$Res> {
  factory $WeekUpdateInProgressCopyWith(WeekUpdateInProgress value,
          $Res Function(WeekUpdateInProgress) then) =
      _$WeekUpdateInProgressCopyWithImpl<$Res>;
}

class _$WeekUpdateInProgressCopyWithImpl<$Res>
    extends _$WeekStateCopyWithImpl<$Res>
    implements $WeekUpdateInProgressCopyWith<$Res> {
  _$WeekUpdateInProgressCopyWithImpl(
      WeekUpdateInProgress _value, $Res Function(WeekUpdateInProgress) _then)
      : super(_value, (v) => _then(v as WeekUpdateInProgress));

  @override
  WeekUpdateInProgress get _value => super._value as WeekUpdateInProgress;
}

class _$WeekUpdateInProgress implements WeekUpdateInProgress {
  const _$WeekUpdateInProgress();

  @override
  String toString() {
    return 'WeekState.weekUpdateInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WeekUpdateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result weekUpdateInProgress(),
    @required Result weekUpdated(Week week),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(weekUpdateInProgress != null);
    assert(weekUpdated != null);
    assert(error != null);
    return weekUpdateInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result weekUpdateInProgress(),
    Result weekUpdated(Week week),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weekUpdateInProgress != null) {
      return weekUpdateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result weekUpdateInProgress(WeekUpdateInProgress value),
    @required Result weekUpdated(WeekUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(weekUpdateInProgress != null);
    assert(weekUpdated != null);
    assert(error != null);
    return weekUpdateInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result weekUpdateInProgress(WeekUpdateInProgress value),
    Result weekUpdated(WeekUpdated value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weekUpdateInProgress != null) {
      return weekUpdateInProgress(this);
    }
    return orElse();
  }
}

abstract class WeekUpdateInProgress implements WeekState {
  const factory WeekUpdateInProgress() = _$WeekUpdateInProgress;
}

abstract class $WeekUpdatedCopyWith<$Res> {
  factory $WeekUpdatedCopyWith(
          WeekUpdated value, $Res Function(WeekUpdated) then) =
      _$WeekUpdatedCopyWithImpl<$Res>;
  $Res call({Week week});
}

class _$WeekUpdatedCopyWithImpl<$Res> extends _$WeekStateCopyWithImpl<$Res>
    implements $WeekUpdatedCopyWith<$Res> {
  _$WeekUpdatedCopyWithImpl(
      WeekUpdated _value, $Res Function(WeekUpdated) _then)
      : super(_value, (v) => _then(v as WeekUpdated));

  @override
  WeekUpdated get _value => super._value as WeekUpdated;

  @override
  $Res call({
    Object week = freezed,
  }) {
    return _then(WeekUpdated(
      week: week == freezed ? _value.week : week as Week,
    ));
  }
}

class _$WeekUpdated implements WeekUpdated {
  const _$WeekUpdated({@required this.week}) : assert(week != null);

  @override
  final Week week;

  @override
  String toString() {
    return 'WeekState.weekUpdated(week: $week)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeekUpdated &&
            (identical(other.week, week) ||
                const DeepCollectionEquality().equals(other.week, week)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(week);

  @override
  $WeekUpdatedCopyWith<WeekUpdated> get copyWith =>
      _$WeekUpdatedCopyWithImpl<WeekUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result weekUpdateInProgress(),
    @required Result weekUpdated(Week week),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(weekUpdateInProgress != null);
    assert(weekUpdated != null);
    assert(error != null);
    return weekUpdated(week);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result weekUpdateInProgress(),
    Result weekUpdated(Week week),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weekUpdated != null) {
      return weekUpdated(week);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result weekUpdateInProgress(WeekUpdateInProgress value),
    @required Result weekUpdated(WeekUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(weekUpdateInProgress != null);
    assert(weekUpdated != null);
    assert(error != null);
    return weekUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result weekUpdateInProgress(WeekUpdateInProgress value),
    Result weekUpdated(WeekUpdated value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weekUpdated != null) {
      return weekUpdated(this);
    }
    return orElse();
  }
}

abstract class WeekUpdated implements WeekState {
  const factory WeekUpdated({@required Week week}) = _$WeekUpdated;

  Week get week;
  $WeekUpdatedCopyWith<WeekUpdated> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ErrorCopyWithImpl<$Res> extends _$WeekStateCopyWithImpl<$Res>
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

class _$Error implements Error {
  const _$Error({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'WeekState.error(message: $message)';
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
    @required Result weekUpdateInProgress(),
    @required Result weekUpdated(Week week),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(weekUpdateInProgress != null);
    assert(weekUpdated != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result weekUpdateInProgress(),
    Result weekUpdated(Week week),
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
    @required Result weekUpdateInProgress(WeekUpdateInProgress value),
    @required Result weekUpdated(WeekUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(weekUpdateInProgress != null);
    assert(weekUpdated != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result weekUpdateInProgress(WeekUpdateInProgress value),
    Result weekUpdated(WeekUpdated value),
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

abstract class Error implements WeekState {
  const factory Error({@required String message}) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}

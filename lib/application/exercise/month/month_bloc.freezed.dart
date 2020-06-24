// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'month_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MonthEventTearOff {
  const _$MonthEventTearOff();

  UpdateNextMonth updateNextMonth(
      {@required int exerciseId, @required Month nextMonth}) {
    return UpdateNextMonth(
      exerciseId: exerciseId,
      nextMonth: nextMonth,
    );
  }
}

// ignore: unused_element
const $MonthEvent = _$MonthEventTearOff();

mixin _$MonthEvent {
  int get exerciseId;
  Month get nextMonth;

  $MonthEventCopyWith<MonthEvent> get copyWith;
}

abstract class $MonthEventCopyWith<$Res> {
  factory $MonthEventCopyWith(
          MonthEvent value, $Res Function(MonthEvent) then) =
      _$MonthEventCopyWithImpl<$Res>;
  $Res call({int exerciseId, Month nextMonth});
}

class _$MonthEventCopyWithImpl<$Res> implements $MonthEventCopyWith<$Res> {
  _$MonthEventCopyWithImpl(this._value, this._then);

  final MonthEvent _value;
  // ignore: unused_field
  final $Res Function(MonthEvent) _then;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object nextMonth = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      nextMonth: nextMonth == freezed ? _value.nextMonth : nextMonth as Month,
    ));
  }
}

abstract class $UpdateNextMonthCopyWith<$Res>
    implements $MonthEventCopyWith<$Res> {
  factory $UpdateNextMonthCopyWith(
          UpdateNextMonth value, $Res Function(UpdateNextMonth) then) =
      _$UpdateNextMonthCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId, Month nextMonth});
}

class _$UpdateNextMonthCopyWithImpl<$Res> extends _$MonthEventCopyWithImpl<$Res>
    implements $UpdateNextMonthCopyWith<$Res> {
  _$UpdateNextMonthCopyWithImpl(
      UpdateNextMonth _value, $Res Function(UpdateNextMonth) _then)
      : super(_value, (v) => _then(v as UpdateNextMonth));

  @override
  UpdateNextMonth get _value => super._value as UpdateNextMonth;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object nextMonth = freezed,
  }) {
    return _then(UpdateNextMonth(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      nextMonth: nextMonth == freezed ? _value.nextMonth : nextMonth as Month,
    ));
  }
}

class _$UpdateNextMonth implements UpdateNextMonth {
  const _$UpdateNextMonth({@required this.exerciseId, @required this.nextMonth})
      : assert(exerciseId != null),
        assert(nextMonth != null);

  @override
  final int exerciseId;
  @override
  final Month nextMonth;

  @override
  String toString() {
    return 'MonthEvent.updateNextMonth(exerciseId: $exerciseId, nextMonth: $nextMonth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateNextMonth &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.nextMonth, nextMonth) ||
                const DeepCollectionEquality()
                    .equals(other.nextMonth, nextMonth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(nextMonth);

  @override
  $UpdateNextMonthCopyWith<UpdateNextMonth> get copyWith =>
      _$UpdateNextMonthCopyWithImpl<UpdateNextMonth>(this, _$identity);
}

abstract class UpdateNextMonth implements MonthEvent {
  const factory UpdateNextMonth(
      {@required int exerciseId,
      @required Month nextMonth}) = _$UpdateNextMonth;

  @override
  int get exerciseId;
  @override
  Month get nextMonth;
  @override
  $UpdateNextMonthCopyWith<UpdateNextMonth> get copyWith;
}

class _$MonthStateTearOff {
  const _$MonthStateTearOff();

  Initial initial() {
    return const Initial();
  }

  MonthUpdateInProgress monthUpdateInProgress() {
    return const MonthUpdateInProgress();
  }

  MonthUpdated monthUpdated({@required Month month}) {
    return MonthUpdated(
      month: month,
    );
  }

  Error error({@required String message}) {
    return Error(
      message: message,
    );
  }
}

// ignore: unused_element
const $MonthState = _$MonthStateTearOff();

mixin _$MonthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result monthUpdateInProgress(),
    @required Result monthUpdated(Month month),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result monthUpdateInProgress(),
    Result monthUpdated(Month month),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $MonthStateCopyWith<$Res> {
  factory $MonthStateCopyWith(
          MonthState value, $Res Function(MonthState) then) =
      _$MonthStateCopyWithImpl<$Res>;
}

class _$MonthStateCopyWithImpl<$Res> implements $MonthStateCopyWith<$Res> {
  _$MonthStateCopyWithImpl(this._value, this._then);

  final MonthState _value;
  // ignore: unused_field
  final $Res Function(MonthState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$MonthStateCopyWithImpl<$Res>
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
    return 'MonthState.initial()';
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
    @required Result monthUpdateInProgress(),
    @required Result monthUpdated(Month month),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result monthUpdateInProgress(),
    Result monthUpdated(Month month),
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
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
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

abstract class Initial implements MonthState {
  const factory Initial() = _$Initial;
}

abstract class $MonthUpdateInProgressCopyWith<$Res> {
  factory $MonthUpdateInProgressCopyWith(MonthUpdateInProgress value,
          $Res Function(MonthUpdateInProgress) then) =
      _$MonthUpdateInProgressCopyWithImpl<$Res>;
}

class _$MonthUpdateInProgressCopyWithImpl<$Res>
    extends _$MonthStateCopyWithImpl<$Res>
    implements $MonthUpdateInProgressCopyWith<$Res> {
  _$MonthUpdateInProgressCopyWithImpl(
      MonthUpdateInProgress _value, $Res Function(MonthUpdateInProgress) _then)
      : super(_value, (v) => _then(v as MonthUpdateInProgress));

  @override
  MonthUpdateInProgress get _value => super._value as MonthUpdateInProgress;
}

class _$MonthUpdateInProgress implements MonthUpdateInProgress {
  const _$MonthUpdateInProgress();

  @override
  String toString() {
    return 'MonthState.monthUpdateInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MonthUpdateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result monthUpdateInProgress(),
    @required Result monthUpdated(Month month),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(error != null);
    return monthUpdateInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result monthUpdateInProgress(),
    Result monthUpdated(Month month),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (monthUpdateInProgress != null) {
      return monthUpdateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(error != null);
    return monthUpdateInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (monthUpdateInProgress != null) {
      return monthUpdateInProgress(this);
    }
    return orElse();
  }
}

abstract class MonthUpdateInProgress implements MonthState {
  const factory MonthUpdateInProgress() = _$MonthUpdateInProgress;
}

abstract class $MonthUpdatedCopyWith<$Res> {
  factory $MonthUpdatedCopyWith(
          MonthUpdated value, $Res Function(MonthUpdated) then) =
      _$MonthUpdatedCopyWithImpl<$Res>;
  $Res call({Month month});
}

class _$MonthUpdatedCopyWithImpl<$Res> extends _$MonthStateCopyWithImpl<$Res>
    implements $MonthUpdatedCopyWith<$Res> {
  _$MonthUpdatedCopyWithImpl(
      MonthUpdated _value, $Res Function(MonthUpdated) _then)
      : super(_value, (v) => _then(v as MonthUpdated));

  @override
  MonthUpdated get _value => super._value as MonthUpdated;

  @override
  $Res call({
    Object month = freezed,
  }) {
    return _then(MonthUpdated(
      month: month == freezed ? _value.month : month as Month,
    ));
  }
}

class _$MonthUpdated implements MonthUpdated {
  const _$MonthUpdated({@required this.month}) : assert(month != null);

  @override
  final Month month;

  @override
  String toString() {
    return 'MonthState.monthUpdated(month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthUpdated &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(month);

  @override
  $MonthUpdatedCopyWith<MonthUpdated> get copyWith =>
      _$MonthUpdatedCopyWithImpl<MonthUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result monthUpdateInProgress(),
    @required Result monthUpdated(Month month),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(error != null);
    return monthUpdated(month);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result monthUpdateInProgress(),
    Result monthUpdated(Month month),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (monthUpdated != null) {
      return monthUpdated(month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(error != null);
    return monthUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (monthUpdated != null) {
      return monthUpdated(this);
    }
    return orElse();
  }
}

abstract class MonthUpdated implements MonthState {
  const factory MonthUpdated({@required Month month}) = _$MonthUpdated;

  Month get month;
  $MonthUpdatedCopyWith<MonthUpdated> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ErrorCopyWithImpl<$Res> extends _$MonthStateCopyWithImpl<$Res>
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
    return 'MonthState.error(message: $message)';
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
    @required Result monthUpdateInProgress(),
    @required Result monthUpdated(Month month),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result monthUpdateInProgress(),
    Result monthUpdated(Month month),
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
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
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

abstract class Error implements MonthState {
  const factory Error({@required String message}) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}

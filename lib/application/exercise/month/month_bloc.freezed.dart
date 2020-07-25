// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'month_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MonthEventTearOff {
  const _$MonthEventTearOff();

// ignore: unused_element
  UpdateNextMonth updateNextMonth(
      {@required int exerciseId, @required Month nextMonth}) {
    return UpdateNextMonth(
      exerciseId: exerciseId,
      nextMonth: nextMonth,
    );
  }

// ignore: unused_element
  Fetch fetch({@required int exerciseId}) {
    return Fetch(
      exerciseId: exerciseId,
    );
  }
}

// ignore: unused_element
const $MonthEvent = _$MonthEventTearOff();

mixin _$MonthEvent {
  int get exerciseId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateNextMonth(int exerciseId, Month nextMonth),
    @required Result fetch(int exerciseId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateNextMonth(int exerciseId, Month nextMonth),
    Result fetch(int exerciseId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateNextMonth(UpdateNextMonth value),
    @required Result fetch(Fetch value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateNextMonth(UpdateNextMonth value),
    Result fetch(Fetch value),
    @required Result orElse(),
  });

  $MonthEventCopyWith<MonthEvent> get copyWith;
}

abstract class $MonthEventCopyWith<$Res> {
  factory $MonthEventCopyWith(
          MonthEvent value, $Res Function(MonthEvent) then) =
      _$MonthEventCopyWithImpl<$Res>;
  $Res call({int exerciseId});
}

class _$MonthEventCopyWithImpl<$Res> implements $MonthEventCopyWith<$Res> {
  _$MonthEventCopyWithImpl(this._value, this._then);

  final MonthEvent _value;
  // ignore: unused_field
  final $Res Function(MonthEvent) _then;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateNextMonth(int exerciseId, Month nextMonth),
    @required Result fetch(int exerciseId),
  }) {
    assert(updateNextMonth != null);
    assert(fetch != null);
    return updateNextMonth(exerciseId, nextMonth);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateNextMonth(int exerciseId, Month nextMonth),
    Result fetch(int exerciseId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateNextMonth != null) {
      return updateNextMonth(exerciseId, nextMonth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateNextMonth(UpdateNextMonth value),
    @required Result fetch(Fetch value),
  }) {
    assert(updateNextMonth != null);
    assert(fetch != null);
    return updateNextMonth(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateNextMonth(UpdateNextMonth value),
    Result fetch(Fetch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateNextMonth != null) {
      return updateNextMonth(this);
    }
    return orElse();
  }
}

abstract class UpdateNextMonth implements MonthEvent {
  const factory UpdateNextMonth(
      {@required int exerciseId,
      @required Month nextMonth}) = _$UpdateNextMonth;

  @override
  int get exerciseId;
  Month get nextMonth;
  @override
  $UpdateNextMonthCopyWith<UpdateNextMonth> get copyWith;
}

abstract class $FetchCopyWith<$Res> implements $MonthEventCopyWith<$Res> {
  factory $FetchCopyWith(Fetch value, $Res Function(Fetch) then) =
      _$FetchCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId});
}

class _$FetchCopyWithImpl<$Res> extends _$MonthEventCopyWithImpl<$Res>
    implements $FetchCopyWith<$Res> {
  _$FetchCopyWithImpl(Fetch _value, $Res Function(Fetch) _then)
      : super(_value, (v) => _then(v as Fetch));

  @override
  Fetch get _value => super._value as Fetch;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(Fetch(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
    ));
  }
}

class _$Fetch implements Fetch {
  const _$Fetch({@required this.exerciseId}) : assert(exerciseId != null);

  @override
  final int exerciseId;

  @override
  String toString() {
    return 'MonthEvent.fetch(exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fetch &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exerciseId);

  @override
  $FetchCopyWith<Fetch> get copyWith =>
      _$FetchCopyWithImpl<Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateNextMonth(int exerciseId, Month nextMonth),
    @required Result fetch(int exerciseId),
  }) {
    assert(updateNextMonth != null);
    assert(fetch != null);
    return fetch(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateNextMonth(int exerciseId, Month nextMonth),
    Result fetch(int exerciseId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateNextMonth(UpdateNextMonth value),
    @required Result fetch(Fetch value),
  }) {
    assert(updateNextMonth != null);
    assert(fetch != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateNextMonth(UpdateNextMonth value),
    Result fetch(Fetch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements MonthEvent {
  const factory Fetch({@required int exerciseId}) = _$Fetch;

  @override
  int get exerciseId;
  @override
  $FetchCopyWith<Fetch> get copyWith;
}

class _$MonthStateTearOff {
  const _$MonthStateTearOff();

// ignore: unused_element
  Initial initial({@required int exerciseId}) {
    return Initial(
      exerciseId: exerciseId,
    );
  }

// ignore: unused_element
  MonthUpdateInProgress monthUpdateInProgress({@required int exerciseId}) {
    return MonthUpdateInProgress(
      exerciseId: exerciseId,
    );
  }

// ignore: unused_element
  MonthUpdated monthUpdated({@required int exerciseId, @required Month month}) {
    return MonthUpdated(
      exerciseId: exerciseId,
      month: month,
    );
  }

// ignore: unused_element
  FetchInProgress fetchInProgress({@required int exerciseId}) {
    return FetchInProgress(
      exerciseId: exerciseId,
    );
  }

// ignore: unused_element
  Fetched fetched({@required int exerciseId, @required Month month}) {
    return Fetched(
      exerciseId: exerciseId,
      month: month,
    );
  }

// ignore: unused_element
  Error error({@required int exerciseId, @required String message}) {
    return Error(
      exerciseId: exerciseId,
      message: message,
    );
  }
}

// ignore: unused_element
const $MonthState = _$MonthStateTearOff();

mixin _$MonthState {
  int get exerciseId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result monthUpdateInProgress(int exerciseId),
    @required Result monthUpdated(int exerciseId, Month month),
    @required Result fetchInProgress(int exerciseId),
    @required Result fetched(int exerciseId, Month month),
    @required Result error(int exerciseId, String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result monthUpdateInProgress(int exerciseId),
    Result monthUpdated(int exerciseId, Month month),
    Result fetchInProgress(int exerciseId),
    Result fetched(int exerciseId, Month month),
    Result error(int exerciseId, String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
    Result error(Error value),
    @required Result orElse(),
  });

  $MonthStateCopyWith<MonthState> get copyWith;
}

abstract class $MonthStateCopyWith<$Res> {
  factory $MonthStateCopyWith(
          MonthState value, $Res Function(MonthState) then) =
      _$MonthStateCopyWithImpl<$Res>;
  $Res call({int exerciseId});
}

class _$MonthStateCopyWithImpl<$Res> implements $MonthStateCopyWith<$Res> {
  _$MonthStateCopyWithImpl(this._value, this._then);

  final MonthState _value;
  // ignore: unused_field
  final $Res Function(MonthState) _then;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
    ));
  }
}

abstract class $InitialCopyWith<$Res> implements $MonthStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId});
}

class _$InitialCopyWithImpl<$Res> extends _$MonthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(Initial(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
    ));
  }
}

class _$Initial implements Initial {
  const _$Initial({@required this.exerciseId}) : assert(exerciseId != null);

  @override
  final int exerciseId;

  @override
  String toString() {
    return 'MonthState.initial(exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exerciseId);

  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result monthUpdateInProgress(int exerciseId),
    @required Result monthUpdated(int exerciseId, Month month),
    @required Result fetchInProgress(int exerciseId),
    @required Result fetched(int exerciseId, Month month),
    @required Result error(int exerciseId, String message),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return initial(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result monthUpdateInProgress(int exerciseId),
    Result monthUpdated(int exerciseId, Month month),
    Result fetchInProgress(int exerciseId),
    Result fetched(int exerciseId, Month month),
    Result error(int exerciseId, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
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
  const factory Initial({@required int exerciseId}) = _$Initial;

  @override
  int get exerciseId;
  @override
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $MonthUpdateInProgressCopyWith<$Res>
    implements $MonthStateCopyWith<$Res> {
  factory $MonthUpdateInProgressCopyWith(MonthUpdateInProgress value,
          $Res Function(MonthUpdateInProgress) then) =
      _$MonthUpdateInProgressCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId});
}

class _$MonthUpdateInProgressCopyWithImpl<$Res>
    extends _$MonthStateCopyWithImpl<$Res>
    implements $MonthUpdateInProgressCopyWith<$Res> {
  _$MonthUpdateInProgressCopyWithImpl(
      MonthUpdateInProgress _value, $Res Function(MonthUpdateInProgress) _then)
      : super(_value, (v) => _then(v as MonthUpdateInProgress));

  @override
  MonthUpdateInProgress get _value => super._value as MonthUpdateInProgress;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(MonthUpdateInProgress(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
    ));
  }
}

class _$MonthUpdateInProgress implements MonthUpdateInProgress {
  const _$MonthUpdateInProgress({@required this.exerciseId})
      : assert(exerciseId != null);

  @override
  final int exerciseId;

  @override
  String toString() {
    return 'MonthState.monthUpdateInProgress(exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthUpdateInProgress &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exerciseId);

  @override
  $MonthUpdateInProgressCopyWith<MonthUpdateInProgress> get copyWith =>
      _$MonthUpdateInProgressCopyWithImpl<MonthUpdateInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result monthUpdateInProgress(int exerciseId),
    @required Result monthUpdated(int exerciseId, Month month),
    @required Result fetchInProgress(int exerciseId),
    @required Result fetched(int exerciseId, Month month),
    @required Result error(int exerciseId, String message),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return monthUpdateInProgress(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result monthUpdateInProgress(int exerciseId),
    Result monthUpdated(int exerciseId, Month month),
    Result fetchInProgress(int exerciseId),
    Result fetched(int exerciseId, Month month),
    Result error(int exerciseId, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (monthUpdateInProgress != null) {
      return monthUpdateInProgress(exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return monthUpdateInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
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
  const factory MonthUpdateInProgress({@required int exerciseId}) =
      _$MonthUpdateInProgress;

  @override
  int get exerciseId;
  @override
  $MonthUpdateInProgressCopyWith<MonthUpdateInProgress> get copyWith;
}

abstract class $MonthUpdatedCopyWith<$Res>
    implements $MonthStateCopyWith<$Res> {
  factory $MonthUpdatedCopyWith(
          MonthUpdated value, $Res Function(MonthUpdated) then) =
      _$MonthUpdatedCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId, Month month});
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
    Object exerciseId = freezed,
    Object month = freezed,
  }) {
    return _then(MonthUpdated(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
    ));
  }
}

class _$MonthUpdated implements MonthUpdated {
  const _$MonthUpdated({@required this.exerciseId, @required this.month})
      : assert(exerciseId != null),
        assert(month != null);

  @override
  final int exerciseId;
  @override
  final Month month;

  @override
  String toString() {
    return 'MonthState.monthUpdated(exerciseId: $exerciseId, month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthUpdated &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(month);

  @override
  $MonthUpdatedCopyWith<MonthUpdated> get copyWith =>
      _$MonthUpdatedCopyWithImpl<MonthUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result monthUpdateInProgress(int exerciseId),
    @required Result monthUpdated(int exerciseId, Month month),
    @required Result fetchInProgress(int exerciseId),
    @required Result fetched(int exerciseId, Month month),
    @required Result error(int exerciseId, String message),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return monthUpdated(exerciseId, month);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result monthUpdateInProgress(int exerciseId),
    Result monthUpdated(int exerciseId, Month month),
    Result fetchInProgress(int exerciseId),
    Result fetched(int exerciseId, Month month),
    Result error(int exerciseId, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (monthUpdated != null) {
      return monthUpdated(exerciseId, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return monthUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
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
  const factory MonthUpdated(
      {@required int exerciseId, @required Month month}) = _$MonthUpdated;

  @override
  int get exerciseId;
  Month get month;
  @override
  $MonthUpdatedCopyWith<MonthUpdated> get copyWith;
}

abstract class $FetchInProgressCopyWith<$Res>
    implements $MonthStateCopyWith<$Res> {
  factory $FetchInProgressCopyWith(
          FetchInProgress value, $Res Function(FetchInProgress) then) =
      _$FetchInProgressCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId});
}

class _$FetchInProgressCopyWithImpl<$Res> extends _$MonthStateCopyWithImpl<$Res>
    implements $FetchInProgressCopyWith<$Res> {
  _$FetchInProgressCopyWithImpl(
      FetchInProgress _value, $Res Function(FetchInProgress) _then)
      : super(_value, (v) => _then(v as FetchInProgress));

  @override
  FetchInProgress get _value => super._value as FetchInProgress;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(FetchInProgress(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
    ));
  }
}

class _$FetchInProgress implements FetchInProgress {
  const _$FetchInProgress({@required this.exerciseId})
      : assert(exerciseId != null);

  @override
  final int exerciseId;

  @override
  String toString() {
    return 'MonthState.fetchInProgress(exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchInProgress &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exerciseId);

  @override
  $FetchInProgressCopyWith<FetchInProgress> get copyWith =>
      _$FetchInProgressCopyWithImpl<FetchInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result monthUpdateInProgress(int exerciseId),
    @required Result monthUpdated(int exerciseId, Month month),
    @required Result fetchInProgress(int exerciseId),
    @required Result fetched(int exerciseId, Month month),
    @required Result error(int exerciseId, String message),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return fetchInProgress(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result monthUpdateInProgress(int exerciseId),
    Result monthUpdated(int exerciseId, Month month),
    Result fetchInProgress(int exerciseId),
    Result fetched(int exerciseId, Month month),
    Result error(int exerciseId, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchInProgress != null) {
      return fetchInProgress(exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
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

abstract class FetchInProgress implements MonthState {
  const factory FetchInProgress({@required int exerciseId}) = _$FetchInProgress;

  @override
  int get exerciseId;
  @override
  $FetchInProgressCopyWith<FetchInProgress> get copyWith;
}

abstract class $FetchedCopyWith<$Res> implements $MonthStateCopyWith<$Res> {
  factory $FetchedCopyWith(Fetched value, $Res Function(Fetched) then) =
      _$FetchedCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId, Month month});
}

class _$FetchedCopyWithImpl<$Res> extends _$MonthStateCopyWithImpl<$Res>
    implements $FetchedCopyWith<$Res> {
  _$FetchedCopyWithImpl(Fetched _value, $Res Function(Fetched) _then)
      : super(_value, (v) => _then(v as Fetched));

  @override
  Fetched get _value => super._value as Fetched;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object month = freezed,
  }) {
    return _then(Fetched(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
    ));
  }
}

class _$Fetched implements Fetched {
  const _$Fetched({@required this.exerciseId, @required this.month})
      : assert(exerciseId != null),
        assert(month != null);

  @override
  final int exerciseId;
  @override
  final Month month;

  @override
  String toString() {
    return 'MonthState.fetched(exerciseId: $exerciseId, month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fetched &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(month);

  @override
  $FetchedCopyWith<Fetched> get copyWith =>
      _$FetchedCopyWithImpl<Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result monthUpdateInProgress(int exerciseId),
    @required Result monthUpdated(int exerciseId, Month month),
    @required Result fetchInProgress(int exerciseId),
    @required Result fetched(int exerciseId, Month month),
    @required Result error(int exerciseId, String message),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return fetched(exerciseId, month);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result monthUpdateInProgress(int exerciseId),
    Result monthUpdated(int exerciseId, Month month),
    Result fetchInProgress(int exerciseId),
    Result fetched(int exerciseId, Month month),
    Result error(int exerciseId, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetched != null) {
      return fetched(exerciseId, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
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

abstract class Fetched implements MonthState {
  const factory Fetched({@required int exerciseId, @required Month month}) =
      _$Fetched;

  @override
  int get exerciseId;
  Month get month;
  @override
  $FetchedCopyWith<Fetched> get copyWith;
}

abstract class $ErrorCopyWith<$Res> implements $MonthStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId, String message});
}

class _$ErrorCopyWithImpl<$Res> extends _$MonthStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object message = freezed,
  }) {
    return _then(Error(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$Error implements Error {
  const _$Error({@required this.exerciseId, @required this.message})
      : assert(exerciseId != null),
        assert(message != null);

  @override
  final int exerciseId;
  @override
  final String message;

  @override
  String toString() {
    return 'MonthState.error(exerciseId: $exerciseId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(message);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result monthUpdateInProgress(int exerciseId),
    @required Result monthUpdated(int exerciseId, Month month),
    @required Result fetchInProgress(int exerciseId),
    @required Result fetched(int exerciseId, Month month),
    @required Result error(int exerciseId, String message),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return error(exerciseId, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result monthUpdateInProgress(int exerciseId),
    Result monthUpdated(int exerciseId, Month month),
    Result fetchInProgress(int exerciseId),
    Result fetched(int exerciseId, Month month),
    Result error(int exerciseId, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(exerciseId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result monthUpdateInProgress(MonthUpdateInProgress value),
    @required Result monthUpdated(MonthUpdated value),
    @required Result fetchInProgress(FetchInProgress value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(monthUpdateInProgress != null);
    assert(monthUpdated != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result monthUpdateInProgress(MonthUpdateInProgress value),
    Result monthUpdated(MonthUpdated value),
    Result fetchInProgress(FetchInProgress value),
    Result fetched(Fetched value),
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
  const factory Error({@required int exerciseId, @required String message}) =
      _$Error;

  @override
  int get exerciseId;
  String get message;
  @override
  $ErrorCopyWith<Error> get copyWith;
}

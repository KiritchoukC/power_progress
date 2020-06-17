// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'one_rm_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OneRmEventTearOff {
  const _$OneRmEventTearOff();

  Fetch fetch({@required int exerciseId, @required Month month}) {
    return Fetch(
      exerciseId: exerciseId,
      month: month,
    );
  }

  Upsert upsert(
      {@required int exerciseId,
      @required Month month,
      @required OneRm oneRm}) {
    return Upsert(
      exerciseId: exerciseId,
      month: month,
      oneRm: oneRm,
    );
  }
}

// ignore: unused_element
const $OneRmEvent = _$OneRmEventTearOff();

mixin _$OneRmEvent {
  int get exerciseId;
  Month get month;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(int exerciseId, Month month),
    @required Result upsert(int exerciseId, Month month, OneRm oneRm),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(int exerciseId, Month month),
    Result upsert(int exerciseId, Month month, OneRm oneRm),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(Fetch value),
    @required Result upsert(Upsert value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(Fetch value),
    Result upsert(Upsert value),
    @required Result orElse(),
  });

  $OneRmEventCopyWith<OneRmEvent> get copyWith;
}

abstract class $OneRmEventCopyWith<$Res> {
  factory $OneRmEventCopyWith(
          OneRmEvent value, $Res Function(OneRmEvent) then) =
      _$OneRmEventCopyWithImpl<$Res>;
  $Res call({int exerciseId, Month month});
}

class _$OneRmEventCopyWithImpl<$Res> implements $OneRmEventCopyWith<$Res> {
  _$OneRmEventCopyWithImpl(this._value, this._then);

  final OneRmEvent _value;
  // ignore: unused_field
  final $Res Function(OneRmEvent) _then;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object month = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
    ));
  }
}

abstract class $FetchCopyWith<$Res> implements $OneRmEventCopyWith<$Res> {
  factory $FetchCopyWith(Fetch value, $Res Function(Fetch) then) =
      _$FetchCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId, Month month});
}

class _$FetchCopyWithImpl<$Res> extends _$OneRmEventCopyWithImpl<$Res>
    implements $FetchCopyWith<$Res> {
  _$FetchCopyWithImpl(Fetch _value, $Res Function(Fetch) _then)
      : super(_value, (v) => _then(v as Fetch));

  @override
  Fetch get _value => super._value as Fetch;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object month = freezed,
  }) {
    return _then(Fetch(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
    ));
  }
}

class _$Fetch implements Fetch {
  const _$Fetch({@required this.exerciseId, @required this.month})
      : assert(exerciseId != null),
        assert(month != null);

  @override
  final int exerciseId;
  @override
  final Month month;

  @override
  String toString() {
    return 'OneRmEvent.fetch(exerciseId: $exerciseId, month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fetch &&
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
  $FetchCopyWith<Fetch> get copyWith =>
      _$FetchCopyWithImpl<Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(int exerciseId, Month month),
    @required Result upsert(int exerciseId, Month month, OneRm oneRm),
  }) {
    assert(fetch != null);
    assert(upsert != null);
    return fetch(exerciseId, month);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(int exerciseId, Month month),
    Result upsert(int exerciseId, Month month, OneRm oneRm),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(exerciseId, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(Fetch value),
    @required Result upsert(Upsert value),
  }) {
    assert(fetch != null);
    assert(upsert != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(Fetch value),
    Result upsert(Upsert value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements OneRmEvent {
  const factory Fetch({@required int exerciseId, @required Month month}) =
      _$Fetch;

  @override
  int get exerciseId;
  @override
  Month get month;
  @override
  $FetchCopyWith<Fetch> get copyWith;
}

abstract class $UpsertCopyWith<$Res> implements $OneRmEventCopyWith<$Res> {
  factory $UpsertCopyWith(Upsert value, $Res Function(Upsert) then) =
      _$UpsertCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId, Month month, OneRm oneRm});
}

class _$UpsertCopyWithImpl<$Res> extends _$OneRmEventCopyWithImpl<$Res>
    implements $UpsertCopyWith<$Res> {
  _$UpsertCopyWithImpl(Upsert _value, $Res Function(Upsert) _then)
      : super(_value, (v) => _then(v as Upsert));

  @override
  Upsert get _value => super._value as Upsert;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object month = freezed,
    Object oneRm = freezed,
  }) {
    return _then(Upsert(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
      oneRm: oneRm == freezed ? _value.oneRm : oneRm as OneRm,
    ));
  }
}

class _$Upsert implements Upsert {
  const _$Upsert(
      {@required this.exerciseId, @required this.month, @required this.oneRm})
      : assert(exerciseId != null),
        assert(month != null),
        assert(oneRm != null);

  @override
  final int exerciseId;
  @override
  final Month month;
  @override
  final OneRm oneRm;

  @override
  String toString() {
    return 'OneRmEvent.upsert(exerciseId: $exerciseId, month: $month, oneRm: $oneRm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Upsert &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.oneRm, oneRm) ||
                const DeepCollectionEquality().equals(other.oneRm, oneRm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(oneRm);

  @override
  $UpsertCopyWith<Upsert> get copyWith =>
      _$UpsertCopyWithImpl<Upsert>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(int exerciseId, Month month),
    @required Result upsert(int exerciseId, Month month, OneRm oneRm),
  }) {
    assert(fetch != null);
    assert(upsert != null);
    return upsert(exerciseId, month, oneRm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(int exerciseId, Month month),
    Result upsert(int exerciseId, Month month, OneRm oneRm),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (upsert != null) {
      return upsert(exerciseId, month, oneRm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(Fetch value),
    @required Result upsert(Upsert value),
  }) {
    assert(fetch != null);
    assert(upsert != null);
    return upsert(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(Fetch value),
    Result upsert(Upsert value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (upsert != null) {
      return upsert(this);
    }
    return orElse();
  }
}

abstract class Upsert implements OneRmEvent {
  const factory Upsert(
      {@required int exerciseId,
      @required Month month,
      @required OneRm oneRm}) = _$Upsert;

  @override
  int get exerciseId;
  @override
  Month get month;
  OneRm get oneRm;
  @override
  $UpsertCopyWith<Upsert> get copyWith;
}

class _$OneRmStateTearOff {
  const _$OneRmStateTearOff();

  Initial initial() {
    return const Initial();
  }

  FetchInProgres fetchInProgress() {
    return const FetchInProgres();
  }

  Fetched fetched({@required OneRm oneRm}) {
    return Fetched(
      oneRm: oneRm,
    );
  }

  StorageError storageError() {
    return const StorageError();
  }

  NotFoundError notFoundError() {
    return const NotFoundError();
  }

  AlreadyExistError alreadyExistError() {
    return const AlreadyExistError();
  }

  UnexpectedError unexpectedError() {
    return const UnexpectedError();
  }
}

// ignore: unused_element
const $OneRmState = _$OneRmStateTearOff();

mixin _$OneRmState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetchInProgress(),
    @required Result fetched(OneRm oneRm),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetchInProgress(),
    Result fetched(OneRm oneRm),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  });
}

abstract class $OneRmStateCopyWith<$Res> {
  factory $OneRmStateCopyWith(
          OneRmState value, $Res Function(OneRmState) then) =
      _$OneRmStateCopyWithImpl<$Res>;
}

class _$OneRmStateCopyWithImpl<$Res> implements $OneRmStateCopyWith<$Res> {
  _$OneRmStateCopyWithImpl(this._value, this._then);

  final OneRmState _value;
  // ignore: unused_field
  final $Res Function(OneRmState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$OneRmStateCopyWithImpl<$Res>
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
    return 'OneRmState.initial()';
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
    @required Result fetchInProgress(),
    @required Result fetched(OneRm oneRm),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetchInProgress(),
    Result fetched(OneRm oneRm),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
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
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OneRmState {
  const factory Initial() = _$Initial;
}

abstract class $FetchInProgresCopyWith<$Res> {
  factory $FetchInProgresCopyWith(
          FetchInProgres value, $Res Function(FetchInProgres) then) =
      _$FetchInProgresCopyWithImpl<$Res>;
}

class _$FetchInProgresCopyWithImpl<$Res> extends _$OneRmStateCopyWithImpl<$Res>
    implements $FetchInProgresCopyWith<$Res> {
  _$FetchInProgresCopyWithImpl(
      FetchInProgres _value, $Res Function(FetchInProgres) _then)
      : super(_value, (v) => _then(v as FetchInProgres));

  @override
  FetchInProgres get _value => super._value as FetchInProgres;
}

class _$FetchInProgres implements FetchInProgres {
  const _$FetchInProgres();

  @override
  String toString() {
    return 'OneRmState.fetchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchInProgres);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetchInProgress(),
    @required Result fetched(OneRm oneRm),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetchInProgress(),
    Result fetched(OneRm oneRm),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
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
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class FetchInProgres implements OneRmState {
  const factory FetchInProgres() = _$FetchInProgres;
}

abstract class $FetchedCopyWith<$Res> {
  factory $FetchedCopyWith(Fetched value, $Res Function(Fetched) then) =
      _$FetchedCopyWithImpl<$Res>;
  $Res call({OneRm oneRm});
}

class _$FetchedCopyWithImpl<$Res> extends _$OneRmStateCopyWithImpl<$Res>
    implements $FetchedCopyWith<$Res> {
  _$FetchedCopyWithImpl(Fetched _value, $Res Function(Fetched) _then)
      : super(_value, (v) => _then(v as Fetched));

  @override
  Fetched get _value => super._value as Fetched;

  @override
  $Res call({
    Object oneRm = freezed,
  }) {
    return _then(Fetched(
      oneRm: oneRm == freezed ? _value.oneRm : oneRm as OneRm,
    ));
  }
}

class _$Fetched implements Fetched {
  const _$Fetched({@required this.oneRm}) : assert(oneRm != null);

  @override
  final OneRm oneRm;

  @override
  String toString() {
    return 'OneRmState.fetched(oneRm: $oneRm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fetched &&
            (identical(other.oneRm, oneRm) ||
                const DeepCollectionEquality().equals(other.oneRm, oneRm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(oneRm);

  @override
  $FetchedCopyWith<Fetched> get copyWith =>
      _$FetchedCopyWithImpl<Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetchInProgress(),
    @required Result fetched(OneRm oneRm),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return fetched(oneRm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetchInProgress(),
    Result fetched(OneRm oneRm),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetched != null) {
      return fetched(oneRm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class Fetched implements OneRmState {
  const factory Fetched({@required OneRm oneRm}) = _$Fetched;

  OneRm get oneRm;
  $FetchedCopyWith<Fetched> get copyWith;
}

abstract class $StorageErrorCopyWith<$Res> {
  factory $StorageErrorCopyWith(
          StorageError value, $Res Function(StorageError) then) =
      _$StorageErrorCopyWithImpl<$Res>;
}

class _$StorageErrorCopyWithImpl<$Res> extends _$OneRmStateCopyWithImpl<$Res>
    implements $StorageErrorCopyWith<$Res> {
  _$StorageErrorCopyWithImpl(
      StorageError _value, $Res Function(StorageError) _then)
      : super(_value, (v) => _then(v as StorageError));

  @override
  StorageError get _value => super._value as StorageError;
}

class _$StorageError implements StorageError {
  const _$StorageError();

  @override
  String toString() {
    return 'OneRmState.storageError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StorageError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetchInProgress(),
    @required Result fetched(OneRm oneRm),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return storageError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetchInProgress(),
    Result fetched(OneRm oneRm),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (storageError != null) {
      return storageError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return storageError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (storageError != null) {
      return storageError(this);
    }
    return orElse();
  }
}

abstract class StorageError implements OneRmState {
  const factory StorageError() = _$StorageError;
}

abstract class $NotFoundErrorCopyWith<$Res> {
  factory $NotFoundErrorCopyWith(
          NotFoundError value, $Res Function(NotFoundError) then) =
      _$NotFoundErrorCopyWithImpl<$Res>;
}

class _$NotFoundErrorCopyWithImpl<$Res> extends _$OneRmStateCopyWithImpl<$Res>
    implements $NotFoundErrorCopyWith<$Res> {
  _$NotFoundErrorCopyWithImpl(
      NotFoundError _value, $Res Function(NotFoundError) _then)
      : super(_value, (v) => _then(v as NotFoundError));

  @override
  NotFoundError get _value => super._value as NotFoundError;
}

class _$NotFoundError implements NotFoundError {
  const _$NotFoundError();

  @override
  String toString() {
    return 'OneRmState.notFoundError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotFoundError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetchInProgress(),
    @required Result fetched(OneRm oneRm),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return notFoundError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetchInProgress(),
    Result fetched(OneRm oneRm),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFoundError != null) {
      return notFoundError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return notFoundError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFoundError != null) {
      return notFoundError(this);
    }
    return orElse();
  }
}

abstract class NotFoundError implements OneRmState {
  const factory NotFoundError() = _$NotFoundError;
}

abstract class $AlreadyExistErrorCopyWith<$Res> {
  factory $AlreadyExistErrorCopyWith(
          AlreadyExistError value, $Res Function(AlreadyExistError) then) =
      _$AlreadyExistErrorCopyWithImpl<$Res>;
}

class _$AlreadyExistErrorCopyWithImpl<$Res>
    extends _$OneRmStateCopyWithImpl<$Res>
    implements $AlreadyExistErrorCopyWith<$Res> {
  _$AlreadyExistErrorCopyWithImpl(
      AlreadyExistError _value, $Res Function(AlreadyExistError) _then)
      : super(_value, (v) => _then(v as AlreadyExistError));

  @override
  AlreadyExistError get _value => super._value as AlreadyExistError;
}

class _$AlreadyExistError implements AlreadyExistError {
  const _$AlreadyExistError();

  @override
  String toString() {
    return 'OneRmState.alreadyExistError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AlreadyExistError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetchInProgress(),
    @required Result fetched(OneRm oneRm),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return alreadyExistError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetchInProgress(),
    Result fetched(OneRm oneRm),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (alreadyExistError != null) {
      return alreadyExistError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return alreadyExistError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (alreadyExistError != null) {
      return alreadyExistError(this);
    }
    return orElse();
  }
}

abstract class AlreadyExistError implements OneRmState {
  const factory AlreadyExistError() = _$AlreadyExistError;
}

abstract class $UnexpectedErrorCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) then) =
      _$UnexpectedErrorCopyWithImpl<$Res>;
}

class _$UnexpectedErrorCopyWithImpl<$Res> extends _$OneRmStateCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(
      UnexpectedError _value, $Res Function(UnexpectedError) _then)
      : super(_value, (v) => _then(v as UnexpectedError));

  @override
  UnexpectedError get _value => super._value as UnexpectedError;
}

class _$UnexpectedError implements UnexpectedError {
  const _$UnexpectedError();

  @override
  String toString() {
    return 'OneRmState.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetchInProgress(),
    @required Result fetched(OneRm oneRm),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetchInProgress(),
    Result fetched(OneRm oneRm),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements OneRmState {
  const factory UnexpectedError() = _$UnexpectedError;
}

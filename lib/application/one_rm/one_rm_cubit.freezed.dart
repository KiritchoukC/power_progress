// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'one_rm_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OneRmStateTearOff {
  const _$OneRmStateTearOff();

// ignore: unused_element
  Initial initial({@required int exerciseId}) {
    return Initial(
      exerciseId: exerciseId,
    );
  }

// ignore: unused_element
  FetchInProgres fetchInProgress() {
    return const FetchInProgres();
  }

// ignore: unused_element
  Fetched fetched({@required int exerciseId, @required OneRm oneRm}) {
    return Fetched(
      exerciseId: exerciseId,
      oneRm: oneRm,
    );
  }

// ignore: unused_element
  GenerateAndSaveInProgress generateAndSaveInProgress() {
    return const GenerateAndSaveInProgress();
  }

// ignore: unused_element
  GeneratedAndSaved generatedAndSaved(
      {@required int exerciseId, @required OneRm oneRm}) {
    return GeneratedAndSaved(
      exerciseId: exerciseId,
      oneRm: oneRm,
    );
  }

// ignore: unused_element
  RemoveInProgress removeInProgress() {
    return const RemoveInProgress();
  }

// ignore: unused_element
  Removed removed() {
    return const Removed();
  }

// ignore: unused_element
  StorageError storageError() {
    return const StorageError();
  }

// ignore: unused_element
  NotFoundError notFoundError() {
    return const NotFoundError();
  }

// ignore: unused_element
  AlreadyExistError alreadyExistError() {
    return const AlreadyExistError();
  }

// ignore: unused_element
  UnexpectedError unexpectedError() {
    return const UnexpectedError();
  }

// ignore: unused_element
  NoExistingDataForThisExerciseError noExistingDataForThisExerciseError() {
    return const NoExistingDataForThisExerciseError();
  }
}

// ignore: unused_element
const $OneRmState = _$OneRmStateTearOff();

mixin _$OneRmState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
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
  $Res call({int exerciseId});
}

class _$InitialCopyWithImpl<$Res> extends _$OneRmStateCopyWithImpl<$Res>
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
    return 'OneRmState.initial(exerciseId: $exerciseId)';
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
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return initial(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
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
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
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
  const factory Initial({@required int exerciseId}) = _$Initial;

  int get exerciseId;
  $InitialCopyWith<Initial> get copyWith;
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
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
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
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
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
  $Res call({int exerciseId, OneRm oneRm});
}

class _$FetchedCopyWithImpl<$Res> extends _$OneRmStateCopyWithImpl<$Res>
    implements $FetchedCopyWith<$Res> {
  _$FetchedCopyWithImpl(Fetched _value, $Res Function(Fetched) _then)
      : super(_value, (v) => _then(v as Fetched));

  @override
  Fetched get _value => super._value as Fetched;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object oneRm = freezed,
  }) {
    return _then(Fetched(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      oneRm: oneRm == freezed ? _value.oneRm : oneRm as OneRm,
    ));
  }
}

class _$Fetched implements Fetched {
  const _$Fetched({@required this.exerciseId, @required this.oneRm})
      : assert(exerciseId != null),
        assert(oneRm != null);

  @override
  final int exerciseId;
  @override
  final OneRm oneRm;

  @override
  String toString() {
    return 'OneRmState.fetched(exerciseId: $exerciseId, oneRm: $oneRm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fetched &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.oneRm, oneRm) ||
                const DeepCollectionEquality().equals(other.oneRm, oneRm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(oneRm);

  @override
  $FetchedCopyWith<Fetched> get copyWith =>
      _$FetchedCopyWithImpl<Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return fetched(exerciseId, oneRm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetched != null) {
      return fetched(exerciseId, oneRm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
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
  const factory Fetched({@required int exerciseId, @required OneRm oneRm}) =
      _$Fetched;

  int get exerciseId;
  OneRm get oneRm;
  $FetchedCopyWith<Fetched> get copyWith;
}

abstract class $GenerateAndSaveInProgressCopyWith<$Res> {
  factory $GenerateAndSaveInProgressCopyWith(GenerateAndSaveInProgress value,
          $Res Function(GenerateAndSaveInProgress) then) =
      _$GenerateAndSaveInProgressCopyWithImpl<$Res>;
}

class _$GenerateAndSaveInProgressCopyWithImpl<$Res>
    extends _$OneRmStateCopyWithImpl<$Res>
    implements $GenerateAndSaveInProgressCopyWith<$Res> {
  _$GenerateAndSaveInProgressCopyWithImpl(GenerateAndSaveInProgress _value,
      $Res Function(GenerateAndSaveInProgress) _then)
      : super(_value, (v) => _then(v as GenerateAndSaveInProgress));

  @override
  GenerateAndSaveInProgress get _value =>
      super._value as GenerateAndSaveInProgress;
}

class _$GenerateAndSaveInProgress implements GenerateAndSaveInProgress {
  const _$GenerateAndSaveInProgress();

  @override
  String toString() {
    return 'OneRmState.generateAndSaveInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GenerateAndSaveInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return generateAndSaveInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generateAndSaveInProgress != null) {
      return generateAndSaveInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return generateAndSaveInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generateAndSaveInProgress != null) {
      return generateAndSaveInProgress(this);
    }
    return orElse();
  }
}

abstract class GenerateAndSaveInProgress implements OneRmState {
  const factory GenerateAndSaveInProgress() = _$GenerateAndSaveInProgress;
}

abstract class $GeneratedAndSavedCopyWith<$Res> {
  factory $GeneratedAndSavedCopyWith(
          GeneratedAndSaved value, $Res Function(GeneratedAndSaved) then) =
      _$GeneratedAndSavedCopyWithImpl<$Res>;
  $Res call({int exerciseId, OneRm oneRm});
}

class _$GeneratedAndSavedCopyWithImpl<$Res>
    extends _$OneRmStateCopyWithImpl<$Res>
    implements $GeneratedAndSavedCopyWith<$Res> {
  _$GeneratedAndSavedCopyWithImpl(
      GeneratedAndSaved _value, $Res Function(GeneratedAndSaved) _then)
      : super(_value, (v) => _then(v as GeneratedAndSaved));

  @override
  GeneratedAndSaved get _value => super._value as GeneratedAndSaved;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object oneRm = freezed,
  }) {
    return _then(GeneratedAndSaved(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      oneRm: oneRm == freezed ? _value.oneRm : oneRm as OneRm,
    ));
  }
}

class _$GeneratedAndSaved implements GeneratedAndSaved {
  const _$GeneratedAndSaved({@required this.exerciseId, @required this.oneRm})
      : assert(exerciseId != null),
        assert(oneRm != null);

  @override
  final int exerciseId;
  @override
  final OneRm oneRm;

  @override
  String toString() {
    return 'OneRmState.generatedAndSaved(exerciseId: $exerciseId, oneRm: $oneRm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeneratedAndSaved &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.oneRm, oneRm) ||
                const DeepCollectionEquality().equals(other.oneRm, oneRm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(oneRm);

  @override
  $GeneratedAndSavedCopyWith<GeneratedAndSaved> get copyWith =>
      _$GeneratedAndSavedCopyWithImpl<GeneratedAndSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return generatedAndSaved(exerciseId, oneRm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedAndSaved != null) {
      return generatedAndSaved(exerciseId, oneRm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return generatedAndSaved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedAndSaved != null) {
      return generatedAndSaved(this);
    }
    return orElse();
  }
}

abstract class GeneratedAndSaved implements OneRmState {
  const factory GeneratedAndSaved(
      {@required int exerciseId, @required OneRm oneRm}) = _$GeneratedAndSaved;

  int get exerciseId;
  OneRm get oneRm;
  $GeneratedAndSavedCopyWith<GeneratedAndSaved> get copyWith;
}

abstract class $RemoveInProgressCopyWith<$Res> {
  factory $RemoveInProgressCopyWith(
          RemoveInProgress value, $Res Function(RemoveInProgress) then) =
      _$RemoveInProgressCopyWithImpl<$Res>;
}

class _$RemoveInProgressCopyWithImpl<$Res>
    extends _$OneRmStateCopyWithImpl<$Res>
    implements $RemoveInProgressCopyWith<$Res> {
  _$RemoveInProgressCopyWithImpl(
      RemoveInProgress _value, $Res Function(RemoveInProgress) _then)
      : super(_value, (v) => _then(v as RemoveInProgress));

  @override
  RemoveInProgress get _value => super._value as RemoveInProgress;
}

class _$RemoveInProgress implements RemoveInProgress {
  const _$RemoveInProgress();

  @override
  String toString() {
    return 'OneRmState.removeInProgress()';
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
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return removeInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
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
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return removeInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeInProgress != null) {
      return removeInProgress(this);
    }
    return orElse();
  }
}

abstract class RemoveInProgress implements OneRmState {
  const factory RemoveInProgress() = _$RemoveInProgress;
}

abstract class $RemovedCopyWith<$Res> {
  factory $RemovedCopyWith(Removed value, $Res Function(Removed) then) =
      _$RemovedCopyWithImpl<$Res>;
}

class _$RemovedCopyWithImpl<$Res> extends _$OneRmStateCopyWithImpl<$Res>
    implements $RemovedCopyWith<$Res> {
  _$RemovedCopyWithImpl(Removed _value, $Res Function(Removed) _then)
      : super(_value, (v) => _then(v as Removed));

  @override
  Removed get _value => super._value as Removed;
}

class _$Removed implements Removed {
  const _$Removed();

  @override
  String toString() {
    return 'OneRmState.removed()';
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
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return removed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
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
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return removed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class Removed implements OneRmState {
  const factory Removed() = _$Removed;
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
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return storageError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
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
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return storageError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
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
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return notFoundError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
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
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return notFoundError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
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
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return alreadyExistError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
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
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return alreadyExistError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
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
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
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
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
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

abstract class $NoExistingDataForThisExerciseErrorCopyWith<$Res> {
  factory $NoExistingDataForThisExerciseErrorCopyWith(
          NoExistingDataForThisExerciseError value,
          $Res Function(NoExistingDataForThisExerciseError) then) =
      _$NoExistingDataForThisExerciseErrorCopyWithImpl<$Res>;
}

class _$NoExistingDataForThisExerciseErrorCopyWithImpl<$Res>
    extends _$OneRmStateCopyWithImpl<$Res>
    implements $NoExistingDataForThisExerciseErrorCopyWith<$Res> {
  _$NoExistingDataForThisExerciseErrorCopyWithImpl(
      NoExistingDataForThisExerciseError _value,
      $Res Function(NoExistingDataForThisExerciseError) _then)
      : super(_value, (v) => _then(v as NoExistingDataForThisExerciseError));

  @override
  NoExistingDataForThisExerciseError get _value =>
      super._value as NoExistingDataForThisExerciseError;
}

class _$NoExistingDataForThisExerciseError
    implements NoExistingDataForThisExerciseError {
  const _$NoExistingDataForThisExerciseError();

  @override
  String toString() {
    return 'OneRmState.noExistingDataForThisExerciseError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoExistingDataForThisExerciseError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int exerciseId),
    @required Result fetchInProgress(),
    @required Result fetched(int exerciseId, OneRm oneRm),
    @required Result generateAndSaveInProgress(),
    @required Result generatedAndSaved(int exerciseId, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result storageError(),
    @required Result notFoundError(),
    @required Result alreadyExistError(),
    @required Result unexpectedError(),
    @required Result noExistingDataForThisExerciseError(),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return noExistingDataForThisExerciseError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int exerciseId),
    Result fetchInProgress(),
    Result fetched(int exerciseId, OneRm oneRm),
    Result generateAndSaveInProgress(),
    Result generatedAndSaved(int exerciseId, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result storageError(),
    Result notFoundError(),
    Result alreadyExistError(),
    Result unexpectedError(),
    Result noExistingDataForThisExerciseError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noExistingDataForThisExerciseError != null) {
      return noExistingDataForThisExerciseError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetchInProgress(FetchInProgres value),
    @required Result fetched(Fetched value),
    @required Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    @required Result generatedAndSaved(GeneratedAndSaved value),
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result storageError(StorageError value),
    @required Result notFoundError(NotFoundError value),
    @required Result alreadyExistError(AlreadyExistError value),
    @required Result unexpectedError(UnexpectedError value),
    @required
        Result noExistingDataForThisExerciseError(
            NoExistingDataForThisExerciseError value),
  }) {
    assert(initial != null);
    assert(fetchInProgress != null);
    assert(fetched != null);
    assert(generateAndSaveInProgress != null);
    assert(generatedAndSaved != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(storageError != null);
    assert(notFoundError != null);
    assert(alreadyExistError != null);
    assert(unexpectedError != null);
    assert(noExistingDataForThisExerciseError != null);
    return noExistingDataForThisExerciseError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetchInProgress(FetchInProgres value),
    Result fetched(Fetched value),
    Result generateAndSaveInProgress(GenerateAndSaveInProgress value),
    Result generatedAndSaved(GeneratedAndSaved value),
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result storageError(StorageError value),
    Result notFoundError(NotFoundError value),
    Result alreadyExistError(AlreadyExistError value),
    Result unexpectedError(UnexpectedError value),
    Result noExistingDataForThisExerciseError(
        NoExistingDataForThisExerciseError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noExistingDataForThisExerciseError != null) {
      return noExistingDataForThisExerciseError(this);
    }
    return orElse();
  }
}

abstract class NoExistingDataForThisExerciseError implements OneRmState {
  const factory NoExistingDataForThisExerciseError() =
      _$NoExistingDataForThisExerciseError;
}

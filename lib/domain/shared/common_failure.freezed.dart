// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'common_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommonFailureTearOff {
  const _$CommonFailureTearOff();

// ignore: unused_element
  StorageError storageError() {
    return const StorageError();
  }

// ignore: unused_element
  UnexpectedError unexpectedError() {
    return const UnexpectedError();
  }
}

// ignore: unused_element
const $CommonFailure = _$CommonFailureTearOff();

mixin _$CommonFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result storageError(),
    @required Result unexpectedError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result storageError(),
    Result unexpectedError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result storageError(StorageError value),
    @required Result unexpectedError(UnexpectedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result storageError(StorageError value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  });
}

abstract class $CommonFailureCopyWith<$Res> {
  factory $CommonFailureCopyWith(
          CommonFailure value, $Res Function(CommonFailure) then) =
      _$CommonFailureCopyWithImpl<$Res>;
}

class _$CommonFailureCopyWithImpl<$Res>
    implements $CommonFailureCopyWith<$Res> {
  _$CommonFailureCopyWithImpl(this._value, this._then);

  final CommonFailure _value;
  // ignore: unused_field
  final $Res Function(CommonFailure) _then;
}

abstract class $StorageErrorCopyWith<$Res> {
  factory $StorageErrorCopyWith(
          StorageError value, $Res Function(StorageError) then) =
      _$StorageErrorCopyWithImpl<$Res>;
}

class _$StorageErrorCopyWithImpl<$Res> extends _$CommonFailureCopyWithImpl<$Res>
    implements $StorageErrorCopyWith<$Res> {
  _$StorageErrorCopyWithImpl(
      StorageError _value, $Res Function(StorageError) _then)
      : super(_value, (v) => _then(v as StorageError));

  @override
  StorageError get _value => super._value as StorageError;
}

class _$StorageError with DiagnosticableTreeMixin implements StorageError {
  const _$StorageError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonFailure.storageError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CommonFailure.storageError'));
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
    @required Result storageError(),
    @required Result unexpectedError(),
  }) {
    assert(storageError != null);
    assert(unexpectedError != null);
    return storageError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result storageError(),
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
    @required Result storageError(StorageError value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(storageError != null);
    assert(unexpectedError != null);
    return storageError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result storageError(StorageError value),
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

abstract class StorageError implements CommonFailure {
  const factory StorageError() = _$StorageError;
}

abstract class $UnexpectedErrorCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) then) =
      _$UnexpectedErrorCopyWithImpl<$Res>;
}

class _$UnexpectedErrorCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(
      UnexpectedError _value, $Res Function(UnexpectedError) _then)
      : super(_value, (v) => _then(v as UnexpectedError));

  @override
  UnexpectedError get _value => super._value as UnexpectedError;
}

class _$UnexpectedError
    with DiagnosticableTreeMixin
    implements UnexpectedError {
  const _$UnexpectedError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonFailure.unexpectedError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommonFailure.unexpectedError'));
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
    @required Result storageError(),
    @required Result unexpectedError(),
  }) {
    assert(storageError != null);
    assert(unexpectedError != null);
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result storageError(),
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
    @required Result storageError(StorageError value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(storageError != null);
    assert(unexpectedError != null);
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result storageError(StorageError value),
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

abstract class UnexpectedError implements CommonFailure {
  const factory UnexpectedError() = _$UnexpectedError;
}

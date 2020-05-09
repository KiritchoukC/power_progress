// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseFailureTearOff {
  const _$ExerciseFailureTearOff();

  StorageError storageError() {
    return const StorageError();
  }
}

// ignore: unused_element
const $ExerciseFailure = _$ExerciseFailureTearOff();

mixin _$ExerciseFailure {}

abstract class $ExerciseFailureCopyWith<$Res> {
  factory $ExerciseFailureCopyWith(
          ExerciseFailure value, $Res Function(ExerciseFailure) then) =
      _$ExerciseFailureCopyWithImpl<$Res>;
}

class _$ExerciseFailureCopyWithImpl<$Res>
    implements $ExerciseFailureCopyWith<$Res> {
  _$ExerciseFailureCopyWithImpl(this._value, this._then);

  final ExerciseFailure _value;
  // ignore: unused_field
  final $Res Function(ExerciseFailure) _then;
}

abstract class $StorageErrorCopyWith<$Res> {
  factory $StorageErrorCopyWith(
          StorageError value, $Res Function(StorageError) then) =
      _$StorageErrorCopyWithImpl<$Res>;
}

class _$StorageErrorCopyWithImpl<$Res>
    extends _$ExerciseFailureCopyWithImpl<$Res>
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
    return 'ExerciseFailure.storageError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseFailure.storageError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StorageError);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class StorageError implements ExerciseFailure {
  const factory StorageError() = _$StorageError;
}

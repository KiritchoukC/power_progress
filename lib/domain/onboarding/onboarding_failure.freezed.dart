// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'onboarding_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OnboardingFailureTearOff {
  const _$OnboardingFailureTearOff();

  StorageError storageError() {
    return const StorageError();
  }
}

// ignore: unused_element
const $OnboardingFailure = _$OnboardingFailureTearOff();

mixin _$OnboardingFailure {}

abstract class $OnboardingFailureCopyWith<$Res> {
  factory $OnboardingFailureCopyWith(
          OnboardingFailure value, $Res Function(OnboardingFailure) then) =
      _$OnboardingFailureCopyWithImpl<$Res>;
}

class _$OnboardingFailureCopyWithImpl<$Res>
    implements $OnboardingFailureCopyWith<$Res> {
  _$OnboardingFailureCopyWithImpl(this._value, this._then);

  final OnboardingFailure _value;
  // ignore: unused_field
  final $Res Function(OnboardingFailure) _then;
}

abstract class $StorageErrorCopyWith<$Res> {
  factory $StorageErrorCopyWith(
          StorageError value, $Res Function(StorageError) then) =
      _$StorageErrorCopyWithImpl<$Res>;
}

class _$StorageErrorCopyWithImpl<$Res>
    extends _$OnboardingFailureCopyWithImpl<$Res>
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
    return 'OnboardingFailure.storageError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnboardingFailure.storageError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StorageError);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class StorageError implements OnboardingFailure {
  const factory StorageError() = _$StorageError;
}

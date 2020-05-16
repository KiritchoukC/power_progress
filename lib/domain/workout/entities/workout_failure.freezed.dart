// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutFailureTearOff {
  const _$WorkoutFailureTearOff();

  UnexpectedError unexpectedError() {
    return const UnexpectedError();
  }
}

// ignore: unused_element
const $WorkoutFailure = _$WorkoutFailureTearOff();

mixin _$WorkoutFailure {}

abstract class $WorkoutFailureCopyWith<$Res> {
  factory $WorkoutFailureCopyWith(
          WorkoutFailure value, $Res Function(WorkoutFailure) then) =
      _$WorkoutFailureCopyWithImpl<$Res>;
}

class _$WorkoutFailureCopyWithImpl<$Res>
    implements $WorkoutFailureCopyWith<$Res> {
  _$WorkoutFailureCopyWithImpl(this._value, this._then);

  final WorkoutFailure _value;
  // ignore: unused_field
  final $Res Function(WorkoutFailure) _then;
}

abstract class $UnexpectedErrorCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) then) =
      _$UnexpectedErrorCopyWithImpl<$Res>;
}

class _$UnexpectedErrorCopyWithImpl<$Res>
    extends _$WorkoutFailureCopyWithImpl<$Res>
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
    return 'WorkoutFailure.unexpectedError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutFailure.unexpectedError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class UnexpectedError implements WorkoutFailure {
  const factory UnexpectedError() = _$UnexpectedError;
}

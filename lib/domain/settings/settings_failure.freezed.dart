// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'settings_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SettingsFailureTearOff {
  const _$SettingsFailureTearOff();

  _Common common(CommonFailure failure) {
    return _Common(
      failure,
    );
  }
}

// ignore: unused_element
const $SettingsFailure = _$SettingsFailureTearOff();

mixin _$SettingsFailure {
  CommonFailure get failure;

  $SettingsFailureCopyWith<SettingsFailure> get copyWith;
}

abstract class $SettingsFailureCopyWith<$Res> {
  factory $SettingsFailureCopyWith(
          SettingsFailure value, $Res Function(SettingsFailure) then) =
      _$SettingsFailureCopyWithImpl<$Res>;
  $Res call({CommonFailure failure});

  $CommonFailureCopyWith<$Res> get failure;
}

class _$SettingsFailureCopyWithImpl<$Res>
    implements $SettingsFailureCopyWith<$Res> {
  _$SettingsFailureCopyWithImpl(this._value, this._then);

  final SettingsFailure _value;
  // ignore: unused_field
  final $Res Function(SettingsFailure) _then;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      failure: failure == freezed ? _value.failure : failure as CommonFailure,
    ));
  }

  @override
  $CommonFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $CommonFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

abstract class _$CommonCopyWith<$Res>
    implements $SettingsFailureCopyWith<$Res> {
  factory _$CommonCopyWith(_Common value, $Res Function(_Common) then) =
      __$CommonCopyWithImpl<$Res>;
  @override
  $Res call({CommonFailure failure});

  @override
  $CommonFailureCopyWith<$Res> get failure;
}

class __$CommonCopyWithImpl<$Res> extends _$SettingsFailureCopyWithImpl<$Res>
    implements _$CommonCopyWith<$Res> {
  __$CommonCopyWithImpl(_Common _value, $Res Function(_Common) _then)
      : super(_value, (v) => _then(v as _Common));

  @override
  _Common get _value => super._value as _Common;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Common(
      failure == freezed ? _value.failure : failure as CommonFailure,
    ));
  }
}

class _$_Common with DiagnosticableTreeMixin implements _Common {
  const _$_Common(this.failure) : assert(failure != null);

  @override
  final CommonFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsFailure.common(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsFailure.common'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Common &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$CommonCopyWith<_Common> get copyWith =>
      __$CommonCopyWithImpl<_Common>(this, _$identity);
}

abstract class _Common implements SettingsFailure {
  const factory _Common(CommonFailure failure) = _$_Common;

  @override
  CommonFailure get failure;
  @override
  _$CommonCopyWith<_Common> get copyWith;
}

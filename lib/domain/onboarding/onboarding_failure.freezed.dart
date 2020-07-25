// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'onboarding_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OnboardingFailureTearOff {
  const _$OnboardingFailureTearOff();

// ignore: unused_element
  _Common common(CommonFailure failure) {
    return _Common(
      failure,
    );
  }
}

// ignore: unused_element
const $OnboardingFailure = _$OnboardingFailureTearOff();

mixin _$OnboardingFailure {
  CommonFailure get failure;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result common(CommonFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result common(CommonFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result common(_Common value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result common(_Common value),
    @required Result orElse(),
  });

  $OnboardingFailureCopyWith<OnboardingFailure> get copyWith;
}

abstract class $OnboardingFailureCopyWith<$Res> {
  factory $OnboardingFailureCopyWith(
          OnboardingFailure value, $Res Function(OnboardingFailure) then) =
      _$OnboardingFailureCopyWithImpl<$Res>;
  $Res call({CommonFailure failure});

  $CommonFailureCopyWith<$Res> get failure;
}

class _$OnboardingFailureCopyWithImpl<$Res>
    implements $OnboardingFailureCopyWith<$Res> {
  _$OnboardingFailureCopyWithImpl(this._value, this._then);

  final OnboardingFailure _value;
  // ignore: unused_field
  final $Res Function(OnboardingFailure) _then;

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
    implements $OnboardingFailureCopyWith<$Res> {
  factory _$CommonCopyWith(_Common value, $Res Function(_Common) then) =
      __$CommonCopyWithImpl<$Res>;
  @override
  $Res call({CommonFailure failure});

  @override
  $CommonFailureCopyWith<$Res> get failure;
}

class __$CommonCopyWithImpl<$Res> extends _$OnboardingFailureCopyWithImpl<$Res>
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
    return 'OnboardingFailure.common(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnboardingFailure.common'))
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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result common(CommonFailure failure),
  }) {
    assert(common != null);
    return common(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result common(CommonFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (common != null) {
      return common(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result common(_Common value),
  }) {
    assert(common != null);
    return common(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result common(_Common value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (common != null) {
      return common(this);
    }
    return orElse();
  }
}

abstract class _Common implements OnboardingFailure {
  const factory _Common(CommonFailure failure) = _$_Common;

  @override
  CommonFailure get failure;
  @override
  _$CommonCopyWith<_Common> get copyWith;
}

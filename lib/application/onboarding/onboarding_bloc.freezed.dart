// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OnboardingEventTearOff {
  const _$OnboardingEventTearOff();

  Done done() {
    return const Done();
  }

  IsDone isDone() {
    return const IsDone();
  }
}

// ignore: unused_element
const $OnboardingEvent = _$OnboardingEventTearOff();

mixin _$OnboardingEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result done(),
    @required Result isDone(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result done(),
    Result isDone(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result done(Done value),
    @required Result isDone(IsDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result done(Done value),
    Result isDone(IsDone value),
    @required Result orElse(),
  });
}

abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res>;
}

class _$OnboardingEventCopyWithImpl<$Res>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  final OnboardingEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardingEvent) _then;
}

abstract class $DoneCopyWith<$Res> {
  factory $DoneCopyWith(Done value, $Res Function(Done) then) =
      _$DoneCopyWithImpl<$Res>;
}

class _$DoneCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements $DoneCopyWith<$Res> {
  _$DoneCopyWithImpl(Done _value, $Res Function(Done) _then)
      : super(_value, (v) => _then(v as Done));

  @override
  Done get _value => super._value as Done;
}

class _$Done with DiagnosticableTreeMixin implements Done {
  const _$Done();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardingEvent.done()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnboardingEvent.done'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Done);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result done(),
    @required Result isDone(),
  }) {
    assert(done != null);
    assert(isDone != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result done(),
    Result isDone(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result done(Done value),
    @required Result isDone(IsDone value),
  }) {
    assert(done != null);
    assert(isDone != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result done(Done value),
    Result isDone(IsDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class Done implements OnboardingEvent {
  const factory Done() = _$Done;
}

abstract class $IsDoneCopyWith<$Res> {
  factory $IsDoneCopyWith(IsDone value, $Res Function(IsDone) then) =
      _$IsDoneCopyWithImpl<$Res>;
}

class _$IsDoneCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements $IsDoneCopyWith<$Res> {
  _$IsDoneCopyWithImpl(IsDone _value, $Res Function(IsDone) _then)
      : super(_value, (v) => _then(v as IsDone));

  @override
  IsDone get _value => super._value as IsDone;
}

class _$IsDone with DiagnosticableTreeMixin implements IsDone {
  const _$IsDone();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardingEvent.isDone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnboardingEvent.isDone'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IsDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result done(),
    @required Result isDone(),
  }) {
    assert(done != null);
    assert(isDone != null);
    return isDone();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result done(),
    Result isDone(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isDone != null) {
      return isDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result done(Done value),
    @required Result isDone(IsDone value),
  }) {
    assert(done != null);
    assert(isDone != null);
    return isDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result done(Done value),
    Result isDone(IsDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isDone != null) {
      return isDone(this);
    }
    return orElse();
  }
}

abstract class IsDone implements OnboardingEvent {
  const factory IsDone() = _$IsDone;
}

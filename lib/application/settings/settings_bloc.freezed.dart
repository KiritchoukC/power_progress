// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  UpdateTheme updateTheme({@required bool isThemeDark}) {
    return UpdateTheme(
      isThemeDark: isThemeDark,
    );
  }
}

// ignore: unused_element
const $SettingsEvent = _$SettingsEventTearOff();

mixin _$SettingsEvent {
  bool get isThemeDark;

  $SettingsEventCopyWith<SettingsEvent> get copyWith;
}

abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
  $Res call({bool isThemeDark});
}

class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;

  @override
  $Res call({
    Object isThemeDark = freezed,
  }) {
    return _then(_value.copyWith(
      isThemeDark:
          isThemeDark == freezed ? _value.isThemeDark : isThemeDark as bool,
    ));
  }
}

abstract class $UpdateThemeCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory $UpdateThemeCopyWith(
          UpdateTheme value, $Res Function(UpdateTheme) then) =
      _$UpdateThemeCopyWithImpl<$Res>;
  @override
  $Res call({bool isThemeDark});
}

class _$UpdateThemeCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements $UpdateThemeCopyWith<$Res> {
  _$UpdateThemeCopyWithImpl(
      UpdateTheme _value, $Res Function(UpdateTheme) _then)
      : super(_value, (v) => _then(v as UpdateTheme));

  @override
  UpdateTheme get _value => super._value as UpdateTheme;

  @override
  $Res call({
    Object isThemeDark = freezed,
  }) {
    return _then(UpdateTheme(
      isThemeDark:
          isThemeDark == freezed ? _value.isThemeDark : isThemeDark as bool,
    ));
  }
}

class _$UpdateTheme with DiagnosticableTreeMixin implements UpdateTheme {
  const _$UpdateTheme({@required this.isThemeDark})
      : assert(isThemeDark != null);

  @override
  final bool isThemeDark;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.updateTheme(isThemeDark: $isThemeDark)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.updateTheme'))
      ..add(DiagnosticsProperty('isThemeDark', isThemeDark));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTheme &&
            (identical(other.isThemeDark, isThemeDark) ||
                const DeepCollectionEquality()
                    .equals(other.isThemeDark, isThemeDark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isThemeDark);

  @override
  $UpdateThemeCopyWith<UpdateTheme> get copyWith =>
      _$UpdateThemeCopyWithImpl<UpdateTheme>(this, _$identity);
}

abstract class UpdateTheme implements SettingsEvent {
  const factory UpdateTheme({@required bool isThemeDark}) = _$UpdateTheme;

  @override
  bool get isThemeDark;
  @override
  $UpdateThemeCopyWith<UpdateTheme> get copyWith;
}

class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ThemeUpdateInProgress themeUpdateInProgress() {
    return const ThemeUpdateInProgress();
  }

  ThemeUpdated themeUpdated({@required Settings updatedSettings}) {
    return ThemeUpdated(
      updatedSettings: updatedSettings,
    );
  }

  Error error({@required String message}) {
    return Error(
      message: message,
    );
  }
}

// ignore: unused_element
const $SettingsState = _$SettingsStateTearOff();

mixin _$SettingsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result themeUpdateInProgress(),
    @required Result themeUpdated(Settings updatedSettings),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result themeUpdateInProgress(),
    Result themeUpdated(Settings updatedSettings),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result themeUpdateInProgress(ThemeUpdateInProgress value),
    @required Result themeUpdated(ThemeUpdated value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result themeUpdateInProgress(ThemeUpdateInProgress value),
    Result themeUpdated(ThemeUpdated value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SettingsState.initial'));
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
    @required Result themeUpdateInProgress(),
    @required Result themeUpdated(Settings updatedSettings),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(themeUpdateInProgress != null);
    assert(themeUpdated != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result themeUpdateInProgress(),
    Result themeUpdated(Settings updatedSettings),
    Result error(String message),
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
    @required Result themeUpdateInProgress(ThemeUpdateInProgress value),
    @required Result themeUpdated(ThemeUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(themeUpdateInProgress != null);
    assert(themeUpdated != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result themeUpdateInProgress(ThemeUpdateInProgress value),
    Result themeUpdated(ThemeUpdated value),
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

abstract class Initial implements SettingsState {
  const factory Initial() = _$Initial;
}

abstract class $ThemeUpdateInProgressCopyWith<$Res> {
  factory $ThemeUpdateInProgressCopyWith(ThemeUpdateInProgress value,
          $Res Function(ThemeUpdateInProgress) then) =
      _$ThemeUpdateInProgressCopyWithImpl<$Res>;
}

class _$ThemeUpdateInProgressCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $ThemeUpdateInProgressCopyWith<$Res> {
  _$ThemeUpdateInProgressCopyWithImpl(
      ThemeUpdateInProgress _value, $Res Function(ThemeUpdateInProgress) _then)
      : super(_value, (v) => _then(v as ThemeUpdateInProgress));

  @override
  ThemeUpdateInProgress get _value => super._value as ThemeUpdateInProgress;
}

class _$ThemeUpdateInProgress
    with DiagnosticableTreeMixin
    implements ThemeUpdateInProgress {
  const _$ThemeUpdateInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.themeUpdateInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.themeUpdateInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ThemeUpdateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result themeUpdateInProgress(),
    @required Result themeUpdated(Settings updatedSettings),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(themeUpdateInProgress != null);
    assert(themeUpdated != null);
    assert(error != null);
    return themeUpdateInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result themeUpdateInProgress(),
    Result themeUpdated(Settings updatedSettings),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themeUpdateInProgress != null) {
      return themeUpdateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result themeUpdateInProgress(ThemeUpdateInProgress value),
    @required Result themeUpdated(ThemeUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(themeUpdateInProgress != null);
    assert(themeUpdated != null);
    assert(error != null);
    return themeUpdateInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result themeUpdateInProgress(ThemeUpdateInProgress value),
    Result themeUpdated(ThemeUpdated value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themeUpdateInProgress != null) {
      return themeUpdateInProgress(this);
    }
    return orElse();
  }
}

abstract class ThemeUpdateInProgress implements SettingsState {
  const factory ThemeUpdateInProgress() = _$ThemeUpdateInProgress;
}

abstract class $ThemeUpdatedCopyWith<$Res> {
  factory $ThemeUpdatedCopyWith(
          ThemeUpdated value, $Res Function(ThemeUpdated) then) =
      _$ThemeUpdatedCopyWithImpl<$Res>;
  $Res call({Settings updatedSettings});
}

class _$ThemeUpdatedCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements $ThemeUpdatedCopyWith<$Res> {
  _$ThemeUpdatedCopyWithImpl(
      ThemeUpdated _value, $Res Function(ThemeUpdated) _then)
      : super(_value, (v) => _then(v as ThemeUpdated));

  @override
  ThemeUpdated get _value => super._value as ThemeUpdated;

  @override
  $Res call({
    Object updatedSettings = freezed,
  }) {
    return _then(ThemeUpdated(
      updatedSettings: updatedSettings == freezed
          ? _value.updatedSettings
          : updatedSettings as Settings,
    ));
  }
}

class _$ThemeUpdated with DiagnosticableTreeMixin implements ThemeUpdated {
  const _$ThemeUpdated({@required this.updatedSettings})
      : assert(updatedSettings != null);

  @override
  final Settings updatedSettings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.themeUpdated(updatedSettings: $updatedSettings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.themeUpdated'))
      ..add(DiagnosticsProperty('updatedSettings', updatedSettings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ThemeUpdated &&
            (identical(other.updatedSettings, updatedSettings) ||
                const DeepCollectionEquality()
                    .equals(other.updatedSettings, updatedSettings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updatedSettings);

  @override
  $ThemeUpdatedCopyWith<ThemeUpdated> get copyWith =>
      _$ThemeUpdatedCopyWithImpl<ThemeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result themeUpdateInProgress(),
    @required Result themeUpdated(Settings updatedSettings),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(themeUpdateInProgress != null);
    assert(themeUpdated != null);
    assert(error != null);
    return themeUpdated(updatedSettings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result themeUpdateInProgress(),
    Result themeUpdated(Settings updatedSettings),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themeUpdated != null) {
      return themeUpdated(updatedSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result themeUpdateInProgress(ThemeUpdateInProgress value),
    @required Result themeUpdated(ThemeUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(themeUpdateInProgress != null);
    assert(themeUpdated != null);
    assert(error != null);
    return themeUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result themeUpdateInProgress(ThemeUpdateInProgress value),
    Result themeUpdated(ThemeUpdated value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themeUpdated != null) {
      return themeUpdated(this);
    }
    return orElse();
  }
}

abstract class ThemeUpdated implements SettingsState {
  const factory ThemeUpdated({@required Settings updatedSettings}) =
      _$ThemeUpdated;

  Settings get updatedSettings;
  $ThemeUpdatedCopyWith<ThemeUpdated> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ErrorCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result themeUpdateInProgress(),
    @required Result themeUpdated(Settings updatedSettings),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(themeUpdateInProgress != null);
    assert(themeUpdated != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result themeUpdateInProgress(),
    Result themeUpdated(Settings updatedSettings),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result themeUpdateInProgress(ThemeUpdateInProgress value),
    @required Result themeUpdated(ThemeUpdated value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(themeUpdateInProgress != null);
    assert(themeUpdated != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result themeUpdateInProgress(ThemeUpdateInProgress value),
    Result themeUpdated(ThemeUpdated value),
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

abstract class Error implements SettingsState {
  const factory Error({@required String message}) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}

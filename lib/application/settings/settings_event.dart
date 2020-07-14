part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.updateTheme({@required bool isThemeDark}) = UpdateTheme;
}

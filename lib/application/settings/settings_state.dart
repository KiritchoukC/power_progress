part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = Initial;

  const factory SettingsState.themeUpdateInProgress() = ThemeUpdateInProgress;
  const factory SettingsState.themeUpdated({@required Settings updatedSettings}) = ThemeUpdated;

  const factory SettingsState.fetchInProgress() = FetchInProgress;
  const factory SettingsState.fetched({@required Settings settings}) = Fetched;

  const factory SettingsState.error({@required String message}) = Error;
}

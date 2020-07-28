import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_progress/domain/settings/i_settings_repository.dart';
import 'package:power_progress/domain/settings/settings.dart';
import 'package:power_progress/domain/settings/settings_failure.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final ISettingsRepository settingsRepository;

  SettingsCubit({
    @required this.settingsRepository,
  }) : super(const SettingsState.initial());

  /// Update theme to dark or light
  Future updateTheme({@required bool isThemeDark}) async {
    emit(const SettingsState.themeUpdateInProgress());

    final output = await settingsRepository.settings;

    output.fold(
      _handleFailure,
      (currentSettings) async {
        final updatedSettings = currentSettings.copyWith(isThemeDark: isThemeDark);

        final updateOutput = await settingsRepository.update(updatedSettings);

        updateOutput.fold(
          _handleFailure,
          (_) => emit(SettingsState.themeUpdated(updatedSettings: updatedSettings)),
        );
      },
    );
  }

  /// Fetch the current settings
  Future fetch() async {
    emit(const SettingsState.fetchInProgress());

    final currentSettingsEither = await settingsRepository.settings;

    currentSettingsEither.fold(
      _handleFailure,
      (currentSettings) => emit(SettingsState.fetched(settings: currentSettings)),
    );
  }

  void _handleFailure(SettingsFailure failure) {
    emit(SettingsState.error(message: failure.toErrorMessage()));
  }
}

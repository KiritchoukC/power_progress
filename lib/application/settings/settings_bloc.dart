import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_progress/domain/settings/i_settings_repository.dart';
import 'package:power_progress/domain/settings/settings.dart';
import 'package:power_progress/domain/settings/settings_failure.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingsRepository settingsRepository;

  SettingsBloc({
    @required this.settingsRepository,
  }) : super(const SettingsState.initial());

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(
      fetch: _handleFetchEvent,
      updateTheme: _handleUpdateThemeEvent,
    );
  }

  Stream<SettingsState> _handleUpdateThemeEvent(UpdateTheme event) async* {
    yield const SettingsState.themeUpdateInProgress();

    final currentSettingsEither = await settingsRepository.settings;

    yield* currentSettingsEither.fold(
      onFailure,
      (currentSettings) async* {
        final updatedSettings = currentSettings.copyWith(isThemeDark: event.isThemeDark);

        final updateOutput = await settingsRepository.update(updatedSettings);

        yield* updateOutput.fold(onFailure, (_) async* {
          yield SettingsState.themeUpdated(updatedSettings: updatedSettings);
        });
      },
    );
  }

  Stream<SettingsState> _handleFetchEvent(Fetch event) async* {
    yield const SettingsState.fetchInProgress();

    final currentSettingsEither = await settingsRepository.settings;

    yield* currentSettingsEither.fold(
      onFailure,
      (currentSettings) async* {
        yield SettingsState.fetched(settings: currentSettings);
      },
    );
  }

  Stream<SettingsState> onFailure(SettingsFailure failure) async* {
    yield SettingsState.error(message: failure.toErrorMessage());
  }
}

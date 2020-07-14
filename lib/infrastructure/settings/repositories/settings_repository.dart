import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/settings/errors.dart';

import 'package:power_progress/domain/settings/i_settings_repository.dart';
import 'package:power_progress/domain/settings/settings_failure.dart';
import 'package:power_progress/domain/settings/settings.dart';
import 'package:power_progress/domain/shared/common_failure.dart';
import 'package:power_progress/infrastructure/settings/datasources/i_settings_datasource.dart';
import 'package:power_progress/infrastructure/settings/models/settings_model.dart';

class SettingsRepository implements ISettingsRepository {
  final ISettingsDatasource datasource;

  SettingsRepository({@required this.datasource});

  @override
  Future<Either<SettingsFailure, Unit>> add(Settings settings) async {
    try {
      await datasource.add(SettingsModel.fromDomain(settings));

      return right(unit);
    } catch (_) {
      return left(const SettingsFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  // TODO: implement settings
  Future<Either<SettingsFailure, Settings>> get settings async {
    try {
      final settings = await datasource.settings.then((model) => model.toDomain());
      return right(settings);
    } on SettingsDoesNotExistError {
      await datasource.add(SettingsModel.fromDomain(Settings.init()));
      final settings = await datasource.settings.then((model) => model.toDomain());
      return right(settings);
    } catch (_) {
      return left(const SettingsFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<SettingsFailure, Unit>> update(Settings settings) async {
    try {
      await datasource.update(SettingsModel.fromDomain(settings));

      return right(unit);
    } on SettingsDoesNotExistError {
      await datasource.add(SettingsModel.fromDomain(settings));
      return right(unit);
    } catch (_) {
      return left(const SettingsFailure.common(CommonFailure.storageError()));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:power_progress/infrastructure/settings/models/settings_model.dart';

abstract class ISettingsDatasource {
  Future<Unit> add(SettingsModel model);

  /// throws [SettingsDoesNotExistError] if no existing settings yet
  Future<Unit> update(SettingsModel model);

  /// throws [SettingsDoesNotExistError] if no existing settings yet
  Future<SettingsModel> get settings;
}

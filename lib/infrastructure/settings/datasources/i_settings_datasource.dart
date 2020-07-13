import 'package:dartz/dartz.dart';
import 'package:power_progress/infrastructure/settings/models/settings_model.dart';

abstract class ISettingsDatasource {
  Future<Unit> add(SettingsModel model);
  Future<Unit> update(SettingsModel model);
  Future<SettingsModel> get;
}

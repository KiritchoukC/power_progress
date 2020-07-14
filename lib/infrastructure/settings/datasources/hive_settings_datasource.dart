import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import 'package:power_progress/domain/settings/errors.dart';
import 'package:power_progress/infrastructure/settings/datasources/i_settings_datasource.dart';
import 'package:power_progress/infrastructure/settings/models/settings_model.dart';

class HiveSettingsDatasource implements ISettingsDatasource {
  final Box<SettingsModel> localStorage;

  @override
  Future<SettingsModel> get settings async {
    if (localStorage.isEmpty) {
      throw SettingsDoesNotExistError();
    }

    return localStorage.getAt(0);
  }

  HiveSettingsDatasource({@required this.localStorage});

  @override
  Future<Unit> add(SettingsModel model) async {
    await localStorage.add(model);

    return unit;
  }

  @override
  Future<Unit> update(SettingsModel model) async {
    if (localStorage.isEmpty) {
      throw SettingsDoesNotExistError();
    }

    await localStorage.putAt(0, model);

    return unit;
  }
}

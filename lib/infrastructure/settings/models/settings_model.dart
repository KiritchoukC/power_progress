import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import 'package:power_progress/domain/settings/settings.dart';

part 'settings_model.g.dart';

@HiveType(typeId: 3)
class SettingsModel {
  @HiveField(0)
  bool isThemeDark;

  SettingsModel({
    @required this.isThemeDark,
  });

  SettingsModel.fromDomain(Settings settings) : isThemeDark = settings.isThemeDark;

  Settings toDomain() => Settings(isThemeDark: isThemeDark);
}

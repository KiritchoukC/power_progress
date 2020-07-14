import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/settings/settings.dart';
import 'package:power_progress/domain/settings/settings_failure.dart';

abstract class ISettingsRepository {
  Future<Either<SettingsFailure, Unit>> add(Settings settings);
  Future<Either<SettingsFailure, Unit>> update(Settings settings);
  Future<Either<SettingsFailure, Settings>> get settings;
}

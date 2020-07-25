import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/shared/common_failure.dart';

part 'settings_failure.freezed.dart';

@freezed
abstract class SettingsFailure with _$SettingsFailure {
  const factory SettingsFailure.common(CommonFailure failure) = _Common;
}

/// Extension methods of the one rm failure class
extension SettingsFailureX on SettingsFailure {
  String toErrorMessage() {
    return failure.toErrorMessage();
  }
}

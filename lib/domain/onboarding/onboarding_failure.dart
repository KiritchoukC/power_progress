import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/shared/common_failure.dart';

part 'onboarding_failure.freezed.dart';

@freezed
abstract class OnboardingFailure with _$OnboardingFailure {
  const factory OnboardingFailure.common(CommonFailure failure) = _Common;
}

/// Extension methods of the exercise failure class
extension OnboardingFailureX on OnboardingFailure {
  String toErrorMessage() {
    return when(
      common: (failure) => failure.toErrorMessage(),
    );
  }
}

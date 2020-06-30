import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'onboarding_failure.freezed.dart';

@freezed
abstract class OnboardingFailure with _$OnboardingFailure {
  const factory OnboardingFailure.storageError() = StorageError;
}

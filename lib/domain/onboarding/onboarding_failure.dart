import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'entities/onboarding_failure.freezed.dart';

@freezed
abstract class OnboardingFailure with _$OnboardingFailure {
  const factory OnboardingFailure.storageError() = StorageError;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/messages/errors.dart';
import 'package:power_progress/domain/shared/common_failure.dart';

part 'exercise_failure.freezed.dart';

@freezed
abstract class ExerciseFailure with _$ExerciseFailure {
  const factory ExerciseFailure.oneRmDoestNotExist() = _OneRmDoestNotExist;
  const factory ExerciseFailure.oneRmAlreadyExists() = _OneRmAlreadyExists;
  const factory ExerciseFailure.common(CommonFailure failure) = _Common;
}

/// Extension methods of the exercise failure class
extension ExerciseFailureX on ExerciseFailure {
  String toErrorMessage() {
    return when(
      oneRmDoestNotExist: () => itemDoesNotExistErrorMessage,
      oneRmAlreadyExists: () => itemAlreadyExistsErrorMessage,
      common: (failure) => failure.toErrorMessage(),
    );
  }
}

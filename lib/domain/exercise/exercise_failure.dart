import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/core/messages/errors.dart';

part 'exercise_failure.freezed.dart';

@freezed
abstract class ExerciseFailure with _$ExerciseFailure {
  const factory ExerciseFailure.storageError() = StorageError;
  const factory ExerciseFailure.unexpectedError() = UnexpectedError;
  const factory ExerciseFailure.oneRmDoestNotExist() = OneRmDoestNotExist;
  const factory ExerciseFailure.oneRmAlreadyExists() = OneRmAlreadyExists;
}

/// Extension methods of the exercise failure class
extension ExerciseFailureX on ExerciseFailure {
  String toErrorMessage() {
    return when(
      storageError: () => storageErrorMessage,
      unexpectedError: () => unexpectedErrorMessage,
      oneRmDoestNotExist: () => itemDoesNotExistErrorMessage,
      oneRmAlreadyExists: () => itemAlreadyExistsErrorMessage,
    );
  }
}

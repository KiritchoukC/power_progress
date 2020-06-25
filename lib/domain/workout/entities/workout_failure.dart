import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/core/messages/errors.dart';

part 'workout_failure.freezed.dart';

@freezed
abstract class WorkoutFailure with _$WorkoutFailure {
  const factory WorkoutFailure.storageError() = StorageError;
  const factory WorkoutFailure.unexpectedError() = UnexpectedError;
  const factory WorkoutFailure.oneRmDoesNotExist() = OneRmDoestNotExist;
  const factory WorkoutFailure.oneRmAlreadyExists() = OneRmAlreadyExists;
  const factory WorkoutFailure.previousMonthWithoutOneRm() = PreviousMonthWithoutOneRm;
}

/// Extension methods of the one rm failure class
extension WorkoutFailureX on WorkoutFailure {
  String toErrorMessage() {
    return when(
      storageError: () => storageErrorMessage,
      unexpectedError: () => unexpectedErrorMessage,
      previousMonthWithoutOneRm: () => previousMonthWithoutOneRmErrorMessage,
      oneRmDoesNotExist: () => itemDoesNotExistErrorMessage,
      oneRmAlreadyExists: () => itemAlreadyExistsErrorMessage,
    );
  }
}

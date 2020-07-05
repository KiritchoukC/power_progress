import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/core/messages/errors.dart';
import 'package:power_progress/domain/shared/common_failure.dart';

part 'one_rm_failure.freezed.dart';

@freezed
abstract class OneRmFailure with _$OneRmFailure {
  const factory OneRmFailure.itemDoesNotExist() = _ItemDoesNotExist;
  const factory OneRmFailure.itemAlreadyExists() = _ItemAlreadyExists;
  const factory OneRmFailure.noExistingDataForThisExercise() = _NoExistingDataForThisExercise;
  const factory OneRmFailure.common(CommonFailure failure) = _Common;
}

/// Extension methods of the one rm failure class
extension OneRmFailureX on OneRmFailure {
  String toErrorMessage() {
    return when(
      itemDoesNotExist: () => itemDoesNotExistErrorMessage,
      itemAlreadyExists: () => itemAlreadyExistsErrorMessage,
      noExistingDataForThisExercise: () => noExistingDataForThisExerciseErrorMessage,
      common: (failure) => failure.toErrorMessage(),
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/core/messages/errors.dart';

part 'one_rm_failure.freezed.dart';

@freezed
abstract class OneRmFailure with _$OneRmFailure {
  const factory OneRmFailure.storageError() = StorageError;
  const factory OneRmFailure.unexpectedError() = UnexpectedError;
  const factory OneRmFailure.itemDoesNotExist() = ItemDoesNotExist;
  const factory OneRmFailure.itemAlreadyExists() = ItemAlreadyExists;
}

/// Extension methods of the one rm failure class
extension OneRmFailureX on OneRmFailure {
  String toErrorMessage() {
    return when(
      storageError: () => storageErrorMessage,
      unexpectedError: () => unexpectedErrorMessage,
      itemDoesNotExist: () => itemDoesNotExistErrorMessage,
      itemAlreadyExists: () => itemAlreadyExistsErrorMessage,
    );
  }
}

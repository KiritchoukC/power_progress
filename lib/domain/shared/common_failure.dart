import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/core/messages/errors.dart';

part 'common_failure.freezed.dart';

@freezed
abstract class CommonFailure with _$CommonFailure {
  const factory CommonFailure.storageError() = StorageError;
  const factory CommonFailure.unexpectedError() = UnexpectedError;
}

/// Extension methods of the exercise failure class
extension CommonFailureX on CommonFailure {
  String toErrorMessage() {
    return when(
      storageError: () => storageErrorMessage,
      unexpectedError: () => unexpectedErrorMessage,
    );
  }
}

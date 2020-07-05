import 'package:dartz/dartz.dart';

import 'package:power_progress/core/domain/value_failure.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final Option<ValueFailure> valueFailureOption;

  UnexpectedValueError(this.valueFailureOption);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString(
      valueFailureOption.fold(
        () => explanation,
        (valueFailure) => '$explanation Failure was: $valueFailure',
      ),
    );
  }
}

class ItemAlreadyExistsError extends Error {}

class ItemDoesNotExistError extends Error {}

import 'package:dartz/dartz.dart';

import 'package:power_progress/core/domain/value_failure.dart';
import 'package:power_progress/core/domain/value_object.dart';

class Incrementation extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Incrementation(double input) {
    assert(input != null);
    return Incrementation._(
      validateIncrementation(input),
    );
  }

  factory Incrementation.parse(String input) {
    assert(input != null);
    return Incrementation._(
      parseAndvalidateIncrementation(input),
    );
  }

  const Incrementation._(this.value);
}

Either<ValueFailure<double>, double> parseAndvalidateIncrementation(String input) {
  if (input.trim().isEmpty) {
    return left(const ValueFailure.empty());
  }

  final parsed = double.tryParse(input);

  if (parsed == null) {
    return left(ValueFailure.notANumber(failedValue: input));
  }

  return validateIncrementation(parsed);
}

Either<ValueFailure<double>, double> validateIncrementation(double input) {
  if (input <= 0) {
    return left(ValueFailure.numberUnderZero(failedValue: input));
  }

  const max = 100;

  if (input > max) {
    return left(ValueFailure.numberTooLarge(failedValue: input, max: max));
  }

  return right(input);
}

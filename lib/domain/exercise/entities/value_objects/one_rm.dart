import 'package:dartz/dartz.dart';

import 'package:power_progress/core/domain/value_failure.dart';
import 'package:power_progress/core/domain/value_object.dart';

class OneRm extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory OneRm(double input) {
    assert(input != null);
    return OneRm._(
      validateOneRm(input),
    );
  }

  factory OneRm.parse(String input) {
    assert(input != null);
    return OneRm._(
      parseAndvalidateOneRm(input),
    );
  }

  const OneRm._(this.value);
}

Either<ValueFailure<double>, double> parseAndvalidateOneRm(String input) {
  if (input.trim().isEmpty) {
    return left(const ValueFailure.empty());
  }

  final parsed = double.tryParse(input);

  if (parsed == null) {
    return left(ValueFailure.notANumber(failedValue: input));
  }

  return validateOneRm(parsed);
}

Either<ValueFailure<double>, double> validateOneRm(double input) {
  if (input <= 0) {
    return left(ValueFailure.numberUnderZero(failedValue: input));
  }

  const max = 1000;

  if (input > max) {
    return left(ValueFailure.numberTooLarge(failedValue: input, max: max));
  }

  return right(input);
}

import 'package:dartz/dartz.dart';

import 'package:power_progress/core/domain/value_failure.dart';
import 'package:power_progress/core/domain/value_object.dart';

class Weight extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  Either<ValueFailure<double>, String> get formattedValue {
    return value.fold(
      (l) => left(l),
      (r) => right(((r * 4).round() / 4).toStringAsPrecision(2)),
    );
  }

  factory Weight(double input) {
    assert(input != null);
    return Weight._(
      validateWeight(input),
    );
  }

  factory Weight.parse(String input) {
    assert(input != null);
    return Weight._(
      parseAndvalidateWeight(input),
    );
  }

  const Weight._(this.value);
}

Either<ValueFailure<double>, double> parseAndvalidateWeight(String input) {
  if (input.trim().isEmpty) {
    return left(const ValueFailure.empty());
  }

  final parsed = double.tryParse(input);

  if (parsed == null) {
    return left(ValueFailure.notANumber(failedValue: input));
  }

  return validateWeight(parsed);
}

Either<ValueFailure<double>, double> validateWeight(double input) {
  if (input <= 0) {
    return left(ValueFailure.numberUnderZero(failedValue: input));
  }

  const max = 1000;

  if (input > max) {
    return left(ValueFailure.numberTooLarge(failedValue: input, max: max));
  }

  return right(input);
}

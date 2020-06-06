import 'package:dartz/dartz.dart';

import 'package:power_progress/core/domain/value_failure.dart';
import 'package:power_progress/core/domain/value_object.dart';

class Month extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Month(int input) {
    assert(input != null);
    return Month._(
      validateMonth(input),
    );
  }

  factory Month.parse(String input) {
    assert(input != null);
    return Month._(
      parseAndvalidateMonth(input),
    );
  }

  const Month._(this.value);
}

Either<ValueFailure<int>, int> parseAndvalidateMonth(String input) {
  if (input.trim().isEmpty) {
    return left(const ValueFailure.empty());
  }

  final parsed = int.tryParse(input);

  if (parsed == null) {
    return left(ValueFailure.notANumber(failedValue: input));
  }

  return validateMonth(parsed);
}

Either<ValueFailure<int>, int> validateMonth(int input) {
  if (input <= 0) {
    return left(ValueFailure.numberUnderZero(failedValue: input));
  }

  const max = 100;

  if (input > max) {
    return left(ValueFailure.numberTooLarge(failedValue: input, max: max));
  }

  return right(input);
}

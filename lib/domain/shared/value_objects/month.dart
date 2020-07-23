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

  // TODO: remove either
  Either<ValueFailure<int>, int> get moduloMonthNumber {
    final monthNumber = getOrCrash();

    if (monthNumber <= 0) return left(ValueFailure.numberUnderZero(failedValue: monthNumber));

    if (monthNumber <= 4) return right(monthNumber);

    final result = monthNumber % 4;

    if (result == 0) return right(4);

    return right(result);
  }

  bool get isStartWorkout {
    final monthNumber = getOrCrash();

    if (monthNumber == 1) return false;

    if ((monthNumber - 1) % 4 == 0) return true;

    return false;
  }

  Month get previous => Month(getOrCrash() - 1);
  Month get next => Month(getOrCrash() + 1);
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

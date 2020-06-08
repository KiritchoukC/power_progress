import 'package:dartz/dartz.dart';

import 'package:power_progress/core/domain/value_failure.dart';
import 'package:power_progress/core/domain/value_object.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';

class Week extends ValueObject<WeekEnum> {
  @override
  final Either<ValueFailure<WeekEnum>, WeekEnum> value;

  factory Week(WeekEnum input) {
    assert(input != null);
    return Week._(
      validateWeek(input),
    );
  }

  factory Week.parse(int input) {
    assert(input != null);
    return Week._(validateAndParseWeek(input));
  }

  const Week._(this.value);

  String get displayName => getOrCrash().toDisplayName();
  String get nextWeekDisplayName => getOrCrash().next().toDisplayName();
}

Either<ValueFailure<WeekEnum>, WeekEnum> validateAndParseWeek(int input) {
  if (input > WeekEnum.values.length) {
    return left(ValueFailure.wrongWeek(failedValue: input));
  }

  return right(WeekEnum.values[input]);
}

Either<ValueFailure<WeekEnum>, WeekEnum> validateWeek(WeekEnum input) {
  return right(input);
}

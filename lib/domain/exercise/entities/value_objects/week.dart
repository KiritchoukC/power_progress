import 'package:dartz/dartz.dart';

import 'package:power_progress/core/domain/value_failure.dart';
import 'package:power_progress/core/domain/value_object.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';

class Week extends ValueObject<WeekEnum> {
  @override
  final Either<ValueFailure<WeekEnum>, WeekEnum> value;

  factory Week(WeekEnum input) {
    assert(input != null);
    return Week._(right(input));
  }

  factory Week.parse(int input) {
    assert(input != null);
    return Week._(WeekEnumHelper.fromInt(input));
  }

  const Week._(this.value);

  String get displayName => getOrCrash().toDisplayName();
  String get nextWeekDisplayName => getOrCrash().next().toDisplayName();
}

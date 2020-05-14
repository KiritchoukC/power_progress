import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty() = Empty<T>;
  const factory ValueFailure.numberTooLarge({
    @required T failedValue,
    @required num max,
  }) = NumberTooLarge<T>;
  const factory ValueFailure.numberUnderZero({
    @required T failedValue,
  }) = NumberUnderZero<T>;
  const factory ValueFailure.notANumber({
    @required dynamic failedValue,
  }) = NotANumber<T>;
  const factory ValueFailure.wrongWeek({
    @required dynamic failedValue,
  }) = WrongWeek<T>;
}

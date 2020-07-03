import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';

void main() {
  group('getModuloMonthNumber', () {
    void shouldReturnFailureForValueUnderOrEqualsToZero(int monthNumber) {
      test('month $monthNumber should return a failure ', () async {
        // ARRANGE
        final month = Month(monthNumber);

        // ASSERT
        expect(month.value.isLeft(), true);
      });
    }

    shouldReturnFailureForValueUnderOrEqualsToZero(0);
    shouldReturnFailureForValueUnderOrEqualsToZero(-1);
    shouldReturnFailureForValueUnderOrEqualsToZero(-10);
    shouldReturnFailureForValueUnderOrEqualsToZero(-5);

    void shouldReturnAValueBetween1And4(int monthNumber) {
      test('month $monthNumber should return a value between 1 and 4', () {
        // ARRANGE
        final month = Month(monthNumber);

        // ACT
        final actual = month.moduloMonthNumber;

        // ASSERT
        expect(actual.getOrElse(() => 0), lessThan(5));
        expect(actual.getOrElse(() => 0), greaterThan(0));
      });
    }

    shouldReturnAValueBetween1And4(1);
    shouldReturnAValueBetween1And4(2);
    shouldReturnAValueBetween1And4(3);
    shouldReturnAValueBetween1And4(4);
    shouldReturnAValueBetween1And4(5);
    shouldReturnAValueBetween1And4(6);
    shouldReturnAValueBetween1And4(7);
    shouldReturnAValueBetween1And4(8);
    shouldReturnAValueBetween1And4(9);
    shouldReturnAValueBetween1And4(10);

    void shouldReturnExpectedValue({
      @required int expected,
      @required int monthNumber,
    }) {
      test('month $monthNumber should return $expected', () async {
        // ARRANGE
        final month = Month(monthNumber);

        // ACT
        final actual = month.moduloMonthNumber;

        // ASSERT
        expect(actual.getOrElse(() => 0), expected);
      });
    }

    shouldReturnExpectedValue(monthNumber: 1, expected: 1);
    shouldReturnExpectedValue(monthNumber: 2, expected: 2);
    shouldReturnExpectedValue(monthNumber: 3, expected: 3);
    shouldReturnExpectedValue(monthNumber: 4, expected: 4);
    shouldReturnExpectedValue(monthNumber: 5, expected: 1);
    shouldReturnExpectedValue(monthNumber: 6, expected: 2);
    shouldReturnExpectedValue(monthNumber: 7, expected: 3);
    shouldReturnExpectedValue(monthNumber: 8, expected: 4);
    shouldReturnExpectedValue(monthNumber: 9, expected: 1);
    shouldReturnExpectedValue(monthNumber: 10, expected: 2);
    shouldReturnExpectedValue(monthNumber: 11, expected: 3);
    shouldReturnExpectedValue(monthNumber: 12, expected: 4);
    shouldReturnExpectedValue(monthNumber: 13, expected: 1);
    shouldReturnExpectedValue(monthNumber: 14, expected: 2);
    shouldReturnExpectedValue(monthNumber: 15, expected: 3);
    shouldReturnExpectedValue(monthNumber: 16, expected: 4);
  });
}

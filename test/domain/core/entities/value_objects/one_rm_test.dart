import 'package:flutter_test/flutter_test.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';

void main() {
  group('getModuloMonthNumber', () {
    void shouldReturnAValueBetween1And4(int monthNumber) {
      test('month $monthNumber should return a value between 1 and 4', () {
        // ARRANGE
        final month = Month(monthNumber);

        // ACT
        final actual = month.moduloMonthNumber;

        // ASSERT
        expect(actual, lessThan(5));
        expect(actual, greaterThan(0));
      });
    }

    shouldReturnAValueBetween1And4(0);
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
  });
}

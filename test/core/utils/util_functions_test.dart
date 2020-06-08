import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:power_progress/core/util/util_functions.dart';

void main() {
  group('round', () {
    void shouldRound({@required double expected, @required double input}) {
      test('value $input should return $expected', () async {
        // ACT
        final actual = round(input, 0.250);

        // ASSERT
        expect(actual, expected);
      });
    }

    shouldRound(expected: 10.750, input: 10.760);
    shouldRound(expected: 40.75, input: 40.7869868976);
    shouldRound(expected: 100.25, input: 100.125);
  });
}

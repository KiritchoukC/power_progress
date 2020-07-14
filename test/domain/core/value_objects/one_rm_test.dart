import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';

void main() {
  group('generate', () {
    void shouldReturnExpectedValue(
      Month month,
      Incrementation incrementation,
      OneRm oneRm,
      Option<int> repsDone,
      OneRm expected,
    ) {
      test('should return ${expected.getOrCrash()}', () async {
        // ACT
        final actual = OneRm.generate(month, incrementation, oneRm, repsDone);

        // ASSERT
        expect(actual.getOrCrash(), expected.getOrCrash());
      });
    }

    // when reps done is none, it should return the given one rm
    shouldReturnExpectedValue(Month(1), Incrementation(2), OneRm(100), none(), OneRm(100));
    // when reps done is the same as reps target (10 for month 1), it should return the given one rm
    shouldReturnExpectedValue(Month(1), Incrementation(2), OneRm(100), some(10), OneRm(100));
    // (20 - 10) * 2 + 100 = 120
    shouldReturnExpectedValue(Month(1), Incrementation(2), OneRm(100), some(20), OneRm(120));
    // (5 - 10) * 2 + 100 = 90
    shouldReturnExpectedValue(Month(1), Incrementation(2), OneRm(100), some(5), OneRm(90));
    // (0 - 10) * 2 + 100 = 80
    shouldReturnExpectedValue(Month(1), Incrementation(2), OneRm(100), some(0), OneRm(80));
  });
}

import 'package:dartz/dartz.dart';

import 'package:power_progress/core/domain/value_failure.dart';
import 'package:power_progress/core/domain/value_object.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/workout/workout.dart';

class OneRm extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory OneRm(double input) {
    assert(input != null);
    return OneRm._(
      validateOneRm(input),
    );
  }

  factory OneRm.parse(String input) {
    assert(input != null);
    return OneRm._(
      parseAndvalidateOneRm(input),
    );
  }

  factory OneRm.someOrDefault(Option<OneRm> option) => option.fold(
        () => OneRm(0),
        (a) => a,
      );

  factory OneRm.generate(
    Month month,
    Incrementation incrementation,
    OneRm oneRm,
    Option<int> repsDone,
  ) {
    return repsDone.fold(
      () {
        if (month.next.isStartWorkout) {
          return OneRm.increment(oneRm, incrementation);
        }
        return oneRm;
      },
      (repsDone) {
        final targetReps = WorkoutHelper.getTargetReps(month);

        final newOneRm =
            ((repsDone - targetReps) * incrementation.getOrCrash()) + oneRm.getOrCrash();

        if (month.next.isStartWorkout) {
          return OneRm.increment(OneRm(newOneRm), incrementation);
        }

        return OneRm(newOneRm);
      },
    );
  }

  const OneRm._(this.value);

  factory OneRm.increment(OneRm previousOneRm, Incrementation incrementation) {
    return OneRm(previousOneRm.getOrCrash() + incrementation.getOrCrash() * 4);
  }
}

Either<ValueFailure<double>, double> parseAndvalidateOneRm(String input) {
  if (input.trim().isEmpty) {
    return left(const ValueFailure.empty());
  }

  final parsed = double.tryParse(input);

  if (parsed == null) {
    return left(ValueFailure.notANumber(failedValue: input));
  }

  return validateOneRm(parsed);
}

Either<ValueFailure<double>, double> validateOneRm(double input) {
  if (input < 0) {
    return left(ValueFailure.numberUnderZero(failedValue: input));
  }

  const max = 1000;

  if (input > max) {
    return left(ValueFailure.numberTooLarge(failedValue: input, max: max));
  }

  return right(input);
}

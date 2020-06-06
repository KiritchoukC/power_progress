import 'package:dartz/dartz.dart';

import 'package:power_progress/core/domain/value_failure.dart';
import 'package:power_progress/core/domain/value_object.dart';

class ExerciseName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ExerciseName(String input) {
    assert(input != null);
    return ExerciseName._(
      validateExerciseName(input),
    );
  }

  const ExerciseName._(this.value);
}

Either<ValueFailure<String>, String> validateExerciseName(String input) {
  const maxLength = 100;

  if (input.length > maxLength) {
    return left(ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }

  if (input.trim().isEmpty) {
    return left(const ValueFailure.empty());
  }

  return right(input);
}

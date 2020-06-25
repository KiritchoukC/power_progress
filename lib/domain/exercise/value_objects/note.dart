import 'package:dartz/dartz.dart';

import 'package:power_progress/core/domain/value_failure.dart';
import 'package:power_progress/core/domain/value_object.dart';

class Note extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Note(String input) {
    if (input == null) return null;
    return Note._(
      validateNote(input),
    );
  }

  const Note._(this.value);
}

Either<ValueFailure<String>, String> validateNote(String input) {
  const maxLength = 1000;

  if (input.length > maxLength) {
    return left(ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }

  return right(input);
}

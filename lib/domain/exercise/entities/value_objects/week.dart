import 'package:dartz/dartz.dart';

import '../../../../core/domain/value_failure.dart';
import '../../../../core/domain/value_object.dart';
import '../../../shared/entities/weeks.dart';

class Week extends ValueObject<Weeks> {
  @override
  final Either<ValueFailure<Weeks>, Weeks> value;

  factory Week(Weeks input) {
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

  String get displayName => mapToDisplayName(getOrCrash());
}

String mapToDisplayName(Weeks weeks) {
  if (weeks == Weeks.accumulation) {
    return "Accumulation";
  }
  if (weeks == Weeks.intensification) {
    return "Inensification";
  }
  if (weeks == Weeks.realization) {
    return "Realization";
  }
  if (weeks == Weeks.deload) {
    return "Deload";
  }

  return "UNEXPECTED VALUE";
}

Either<ValueFailure<Weeks>, Weeks> validateAndParseWeek(int input) {
  if (input > Weeks.values.length) {
    return left(ValueFailure.wrongWeek(failedValue: input));
  }

  return right(Weeks.values[input]);
}

Either<ValueFailure<Weeks>, Weeks> validateWeek(Weeks input) {
  return right(input);
}

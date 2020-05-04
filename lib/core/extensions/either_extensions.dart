import 'package:dartz/dartz.dart';
import 'package:power_progress/core/error/errors.dart';

extension EitherExtensions<TLeft, TRight> on Either<TLeft, TRight> {
  TRight getOrCrash() {
    if (this == null) {
      return null;
    }
    return fold((left) => throw UnexpectedValueError(), (right) => right);
  }
}

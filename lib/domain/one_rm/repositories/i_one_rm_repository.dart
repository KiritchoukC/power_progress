import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';

abstract class IOneRmRepository {
  Future<Either<OneRmFailure, Unit>> add(int exerciseId, Month month, OneRm oneRm);
  Future<Either<OneRmFailure, Unit>> update(int exerciseId, Month month, OneRm oneRm);
  Future<Either<OneRmFailure, Unit>> addOrUpdate(int exerciseId, Month month, OneRm oneRm);
  Future<Either<OneRmFailure, Option<OneRm>>> getByExerciseIdAndMonth(int exerciseId, Month month);
  Future<Either<OneRmFailure, Unit>> removeByExerciseId(int exerciseId);
  Future<Either<OneRmFailure, Unit>> removeByExerciseIdAndMonth(int exerciseId, Month month);
  Future<Either<OneRmFailure, OneRm>> generateAndSave(
    int exerciseId,
    Month month,
    Incrementation incrementation,
    OneRm oneRm,
    Option<int> repsDone,
  );
  Future<Either<OneRmFailure, OneRm>> getOrPrevious(int exerciseId, Month month);
}

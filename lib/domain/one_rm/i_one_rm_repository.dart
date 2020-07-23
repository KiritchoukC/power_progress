import 'package:dartz/dartz.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/one_rm/one_rm_failure.dart';

abstract class IOneRmRepository {
  Future<Either<OneRmFailure, int>> add(int exerciseId, Month month, OneRm oneRm);
  Future<Either<OneRmFailure, int>> addFromPreviousMonth(int exerciseId, Month month);
  Future<Either<OneRmFailure, int>> addOrUpdate(int exerciseId, Month month, OneRm oneRm);
  Future<Either<OneRmFailure, Option<OneRm>>> getByExerciseIdAndMonth(int exerciseId, Month month);
  Future<Either<OneRmFailure, Option<OneRm>>> getById(int id);
  Future<Either<OneRmFailure, OneRm>> getOrPrevious(int exerciseId, Month month);
  Future<Either<OneRmFailure, Unit>> removeByExerciseId(int exerciseId);
  Future<Either<OneRmFailure, Unit>> removeByExerciseIdAndMonth(int exerciseId, Month month);
  Future<Either<OneRmFailure, int>> update(int exerciseId, Month month, OneRm oneRm);
}

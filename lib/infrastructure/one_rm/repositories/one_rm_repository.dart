import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/domain/errors.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/one_rm/repositories/i_one_rm_repository.dart';
import 'package:power_progress/infrastructure/one_rm/datasources/i_one_rm_datasource.dart';
import 'package:power_progress/infrastructure/one_rm/models/one_rm_model.dart';

class OneRmRepository implements IOneRmRepository {
  final IOneRmDatasource datasource;

  OneRmRepository({@required this.datasource});

  @override
  Future<Either<OneRmFailure, Unit>> add(int exerciseId, Month month, OneRm oneRm) async {
    try {
      return datasource
          .add(
            OneRmModel(
              exerciseId: exerciseId,
              month: month.getOrCrash(),
              oneRm: oneRm.getOrCrash(),
            ),
          )
          .then((value) => right(unit));
    } on ItemAlreadyExistsError {
      return left(const OneRmFailure.itemAlreadyExists());
    } catch (e) {
      return left(const OneRmFailure.storageError());
    }
  }

  @override
  Future<Either<OneRmFailure, Option<OneRm>>> getByExerciseIdAndMonth(
      int exerciseId, Month month) async {
    try {
      return datasource
          .getByExerciseIdAndMonthNumber(exerciseId, month)
          .then((option) => option.fold(() => right(none()), (a) => right(some(a.toEntity()))));
    } on ItemAlreadyExistsError {
      return left(const OneRmFailure.itemAlreadyExists());
    } catch (e) {
      return left(const OneRmFailure.storageError());
    }
  }

  @override
  Future<Either<OneRmFailure, Unit>> update(int exerciseId, Month month, OneRm oneRm) async {
    try {
      return datasource
          .update(
            OneRmModel(
              exerciseId: exerciseId,
              month: month.getOrCrash(),
              oneRm: oneRm.getOrCrash(),
            ),
          )
          .then((value) => right(unit));
    } on ItemDoesNotExistError {
      return left(const OneRmFailure.itemDoesNotExist());
    } catch (e) {
      return left(const OneRmFailure.storageError());
    }
  }
}

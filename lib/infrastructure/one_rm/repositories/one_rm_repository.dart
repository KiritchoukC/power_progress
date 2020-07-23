import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/domain/errors.dart';
import 'package:power_progress/domain/one_rm/one_rm_failure.dart';
import 'package:power_progress/domain/shared/common_failure.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/one_rm/i_one_rm_repository.dart';
import 'package:power_progress/infrastructure/one_rm/datasources/i_one_rm_datasource.dart';
import 'package:power_progress/infrastructure/one_rm/models/one_rm_model.dart';

class OneRmRepository implements IOneRmRepository {
  final IOneRmDatasource datasource;

  OneRmRepository({@required this.datasource}) : assert(datasource != null);

  @override
  Future<Either<OneRmFailure, int>> add(int exerciseId, Month month, OneRm oneRm) async {
    try {
      return datasource
          .add(
            OneRmModel(
              exerciseId: exerciseId,
              month: month.getOrCrash(),
              oneRm: oneRm.getOrCrash(),
            ),
          )
          .then((insertedId) => right(insertedId));
    } on ItemAlreadyExistsError {
      return left(const OneRmFailure.itemAlreadyExists());
    } catch (e) {
      return left(const OneRmFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<OneRmFailure, int>> addOrUpdate(int exerciseId, Month month, OneRm oneRm) async {
    try {
      return getByExerciseIdAndMonth(exerciseId, month).then(
        (oneRmEither) => oneRmEither.fold(
          (failure) async => left(failure),
          (oneRmOption) => oneRmOption.fold(
            () => add(
              exerciseId,
              month,
              oneRm,
            ),
            (_) => update(
              exerciseId,
              month,
              oneRm,
            ),
          ),
        ),
      );
    } catch (_) {
      return left(const OneRmFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<OneRmFailure, Option<OneRm>>> getByExerciseIdAndMonth(
      int exerciseId, Month month) async {
    try {
      return datasource
          .getByExerciseIdAndMonth(exerciseId, month)
          .then((option) => option.fold(() => right(none()), (a) => right(some(a.toDomain()))));
    } catch (e) {
      return left(const OneRmFailure.common(CommonFailure.storageError()));
    }
  }

  // @override
  // Future<Either<OneRmFailure, OneRm>> get(int exerciseId, Month month) async {
  //   final oneRm = await getByExerciseIdAndMonth(exerciseId, month);

  //   Future<Either<OneRmFailure, OneRm>> ifNone() async {
  //     // if the current month is 1 then we can go further back in time.
  //     // meaning there's no one rm for this exercise.
  //     if (month.getOrCrash() == 1) {
  //       return left(const OneRmFailure.noExistingDataForThisExercise());
  //     }

  //     if (month.getOrCrash() == 5) {
  //       final previousOneRm = await get(exerciseId, month.previous);

  //     }

  //     // get one rm of the previous month
  //     final previousOneRmEither = await get(exerciseId, month.previous);

  //     // if there's one rm for the previous month, persist it for the current month
  //     return previousOneRmEither.fold(
  //       (failure) => left(failure),
  //       (previousOneRm) async {
  //         await addOrUpdate(exerciseId, month, previousOneRm);
  //         return right(previousOneRm);
  //       },
  //     );
  //   }

  //   return oneRm.fold(
  //     (failure) => left(failure),
  //     (oneRmOption) => oneRmOption.fold(
  //       ifNone,
  //       (some) => right(some),
  //     ),
  //   );
  // }

  @override
  Future<Either<OneRmFailure, Unit>> removeByExerciseId(int exerciseId) async {
    try {
      return datasource.removeByExerciseId(exerciseId).then((value) => right(unit));
    } catch (e) {
      return left(const OneRmFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<OneRmFailure, Unit>> removeByExerciseIdAndMonth(int exerciseId, Month month) async {
    try {
      return datasource.removeByExerciseIdAndMonth(exerciseId, month).then((value) => right(unit));
    } catch (e) {
      return left(const OneRmFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<OneRmFailure, int>> update(int exerciseId, Month month, OneRm oneRm) async {
    try {
      return datasource
          .update(
            OneRmModel(
              exerciseId: exerciseId,
              month: month.getOrCrash(),
              oneRm: oneRm.getOrCrash(),
            ),
          )
          .then((updatedId) => right(updatedId));
    } on ItemDoesNotExistError {
      return left(const OneRmFailure.itemDoesNotExist());
    } catch (e) {
      return left(const OneRmFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<OneRmFailure, OneRm>> getOrPrevious(int exerciseId, Month month) async {
    final previousOneRmEither = await getByExerciseIdAndMonth(exerciseId, month);

    return previousOneRmEither.fold(
      (l) => left(l),
      (previousOneRmOption) => previousOneRmOption.fold(
        () => getOrPrevious(exerciseId, month.previous),
        (some) => right(some),
      ),
    );
  }

  @override
  Future<Either<OneRmFailure, int>> addFromPreviousMonth(int exerciseId, Month month) async {
    try {
      final previousOneRmEither = await getOrPrevious(exerciseId, month);
      return previousOneRmEither.fold(
        (failure) => left(failure),
        (previousOneRm) async => add(exerciseId, month, previousOneRm),
      );
    } catch (e) {
      return left(const OneRmFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<OneRmFailure, Option<OneRm>>> getById(int id) async {
    try {
      return datasource
          .getById(id)
          .then((option) => option.fold(() => right(none()), (a) => right(some(a.toDomain()))));
    } catch (e) {
      return left(const OneRmFailure.common(CommonFailure.storageError()));
    }
  }
}

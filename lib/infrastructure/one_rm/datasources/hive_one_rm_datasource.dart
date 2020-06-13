import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:power_progress/core/domain/errors.dart';

import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/infrastructure/one_rm/datasources/i_one_rm_datasource.dart';
import 'package:power_progress/infrastructure/one_rm/models/one_rm_model.dart';

/// This datasource class manages one rm for each month and exercise identifier
class HiveOneRmDatasource implements IOneRmDatasource {
  final Box<OneRmModel> localStorage;

  HiveOneRmDatasource({@required this.localStorage}) : assert(localStorage != null);

  /// Gets the persisted one rm by the given [exerciseId] and [month]
  @override
  Future<Option<OneRmModel>> getByExerciseIdAndMonthNumber(int exerciseId, Month month) async {
    final result = localStorage.values.firstWhere(
      (element) => element.exerciseId == exerciseId && element.month == month.getOrCrash(),
      orElse: () => null,
    );

    if (result == null) return none();

    return some(result);
  }

  /// Adds the given one rm [model] to the local storage.
  /// Throws [ItemAlreadyExistsError] if [model] already exists in the local storage.
  @override
  Future<Unit> add(OneRmModel model) async {
    return (await getByExerciseIdAndMonthNumber(model.exerciseId, Month(model.month))).fold(
      // if it does not exist yet, add it.
      () async {
        final insertedId = await localStorage.add(model);

        model.id = insertedId;

        await localStorage.putAt(insertedId, model);

        return unit;
      },
      // if it already exists, throw an error.
      (a) => throw ItemAlreadyExistsError(),
    );
  }

  /// updates the given one rm [model] to the local storage
  @override
  Future<Unit> update(OneRmModel model) {
    return localStorage.putAt(model.id, model).then((_) => unit);
  }
}

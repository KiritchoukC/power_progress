import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import 'package:power_progress/core/domain/errors.dart';
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
  /// An [ItemAlreadyExistsError] exception is raised if [model] already exists in the local storage.
  @override
  Future<Unit> add(OneRmModel model) async {
    return (await getByExerciseIdAndMonthNumber(model.exerciseId, Month(model.month))).fold(
      // if it does not exist yet, add it.
      () {
        return localStorage
            .add(model)
            .then((insertedId) => model.copyWith(id: insertedId))
            // update the model with the auto generated identifier.
            .then((addedModel) => localStorage.put(addedModel.id, addedModel))
            .then((value) => unit);
      },
      // if it already exists, throw an error.
      (_) => throw ItemAlreadyExistsError(),
    );
  }

  /// updates the given one rm [model] to the local storage
  /// An [ItemDoesNotExistError] exception is raised if [model] does not exist in the local storage.
  @override
  Future<Unit> update(OneRmModel model) async {
    return (await getByExerciseIdAndMonthNumber(model.exerciseId, Month(model.month))).fold(
      // if it does not exist, throw an error.
      () => throw ItemDoesNotExistError(),
      // if it does not exist yet, add it.
      (existingModel) => localStorage
          .put(existingModel.id, existingModel.copyWith(oneRm: model.oneRm))
          .then((_) => unit),
    );
  }

  @override
  Future<Unit> removeByExerciseId(int exerciseId) async {
    final oneRmIdsToDelete =
        localStorage.values.where((element) => element.exerciseId == exerciseId).map((e) => e.id);

    await localStorage.deleteAll(oneRmIdsToDelete);

    return unit;
  }

  @override
  Future<Unit> removeByExerciseIdAndMonth(int exerciseId, Month month) async {
    return (await getByExerciseIdAndMonthNumber(exerciseId, month)).fold(
      // if it does not exist, do nothing.
      () => unit,
      // if it does not exist yet, delete it.
      (existingModel) => localStorage.delete(existingModel.id).then((_) => unit),
    );
  }
}

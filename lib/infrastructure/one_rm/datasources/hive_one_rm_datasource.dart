import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

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
  Future<Option<OneRm>> getByExerciseIdAndMonthNumber(int exerciseId, Month month) async {
    try {
      return (await _getByExerciseIdAndMonthNumber(exerciseId, month)).fold(
        () => none(),
        (result) => some(OneRm(result.oneRm)),
      );
    } catch (e) {
      throw Exception();
    }
  }

  /// Updates the one rm for the given [exerciseId] and [month] if it already exists.
  /// Otherwise, adds a new record.
  @override
  Future<Unit> upsert(int exerciseId, Month month, OneRm oneRm) async {
    void add() {
      _add(
        OneRmModel(
          exerciseId: exerciseId,
          month: month.getOrCrash(),
          oneRm: oneRm.getOrCrash(),
        ),
      );
    }

    void update(OneRmModel model) {
      model.oneRm = oneRm.getOrCrash();
      _update(model);
    }

    (await _getByExerciseIdAndMonthNumber(exerciseId, month)).fold(add, update);
    return unit;
  }

  Future<Option<OneRmModel>> _getByExerciseIdAndMonthNumber(int exerciseId, Month month) async {
    final result = localStorage.values.firstWhere(
      (element) => element.exerciseId == exerciseId && element.month == month.getOrCrash(),
      orElse: () => null,
    );

    if (result == null) return none();

    return some(result);
  }

  Future<Unit> _add(OneRmModel model) async {
    final insertedId = await localStorage.add(model);

    model.id = insertedId;

    await localStorage.putAt(insertedId, model);

    return unit;
  }

  Future<Unit> _update(OneRmModel model) async {
    await localStorage.putAt(model.id, model);

    return unit;
  }
}

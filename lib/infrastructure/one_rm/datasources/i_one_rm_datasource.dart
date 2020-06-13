import 'package:dartz/dartz.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/infrastructure/one_rm/models/one_rm_model.dart';

abstract class IOneRmDatasource {
  Future<Option<OneRmModel>> getByExerciseIdAndMonthNumber(int exerciseId, Month month);

  Future<Unit> add(OneRmModel model);

  Future<Unit> update(OneRmModel model);
}

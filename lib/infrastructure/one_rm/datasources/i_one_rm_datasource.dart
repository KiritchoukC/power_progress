import 'package:dartz/dartz.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';

abstract class IOneRmDatasource {
  Future<Option<OneRm>> getByExerciseIdAndMonthNumber(int exerciseId, Month month);

  Future<Unit> upsert(int exerciseId, Month month, OneRm oneRm);
}

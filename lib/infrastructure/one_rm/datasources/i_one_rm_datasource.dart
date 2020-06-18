import 'package:dartz/dartz.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/infrastructure/one_rm/models/one_rm_model.dart';

abstract class IOneRmDatasource {
  /// Gets the persisted one rm by the given [exerciseId] and [month]
  Future<Option<OneRmModel>> getByExerciseIdAndMonthNumber(int exerciseId, Month month);

  /// Adds the given one rm [model] to the local storage.
  /// An [ItemAlreadyExistsError] exception is raised if [model] already exists in the local storage.
  Future<Unit> add(OneRmModel model);

  /// updates the given one rm [model] to the local storage
  /// An [ItemDoesNotExistError] exception is raised if [model] does not exist in the local storage.
  Future<Unit> update(OneRmModel model);

  /// removes all the one rms associated with the given exercise
  Future<Unit> removeByExerciseId(int exerciseId);
}
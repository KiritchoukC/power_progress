import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/util/util_functions.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';
import 'package:power_progress/infrastructure/exercise/datasources/i_exercise_datasource.dart';

class HiveExerciseDatasource implements IExerciseDatasource {
  final Box<ExerciseModel> localStorage;

  HiveExerciseDatasource({@required this.localStorage}) : assert(localStorage != null);

  @override
  Future<Unit> add(ExerciseModel exercise) async {
    // insert and retrieve auto-increment id
    final int insertedId = await tryOrCrash(
      () => localStorage.add(exercise),
      (_) => throw Exception(),
    );

    // add generated id to the exercise
    exercise.id = insertedId;

    // update exercise with generated id
    await tryOrCrash(
      () => localStorage.put(insertedId, exercise),
      (_) => throw Exception(),
    );

    return unit;
  }

  @override
  Future<List<ExerciseModel>> get exercises async => tryOrCrash(
        () => localStorage.values.toList(),
        (_) => throw Exception(),
      );

  @override
  Future<Unit> remove(List<int> ids) async {
    await tryOrCrash(
      () => localStorage.deleteAll(ids),
      (_) => throw Exception(),
    );

    return unit;
  }

  @override
  Future<Unit> updateNextWeek(int exerciseId, WeekEnum nextWeek) async {
    final currentModel = localStorage.values.firstWhere(
      (element) => element.id == exerciseId,
      orElse: () => throw Exception('Exercise $exerciseId does not exist'),
    );

    final updatedModel = ExerciseModel(
      id: currentModel.id,
      oneRm: currentModel.oneRm,
      name: currentModel.name,
      incrementation: currentModel.incrementation,
      month: currentModel.month,
      note: currentModel.note,
      nextWeekIndex: nextWeek.index,
    );

    await tryOrCrash(
      () => localStorage.put(exerciseId, updatedModel),
      (_) => throw Exception(),
    );

    return unit;
  }

  @override
  Future<Unit> updateNextMonth(int exerciseId, int nextMonth) async {
    final currentModel = localStorage.values.firstWhere(
      (element) => element.id == exerciseId,
      orElse: () => throw Exception('Exercise $exerciseId does not exist'),
    );

    final updatedModel = ExerciseModel(
      id: currentModel.id,
      oneRm: currentModel.oneRm,
      name: currentModel.name,
      incrementation: currentModel.incrementation,
      nextWeekIndex: currentModel.nextWeekIndex,
      note: currentModel.note,
      month: nextMonth,
    );

    await tryOrCrash(
      () => localStorage.put(exerciseId, updatedModel),
      (_) => throw Exception(),
    );

    return unit;
  }
}

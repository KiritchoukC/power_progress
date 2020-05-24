import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';

import '../../../core/util/util_functions.dart';
import '../models/exercise_model.dart';
import 'i_exercise_datasource.dart';

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
  Future<Unit> updateWeek(int exerciseId, WeekEnum week) async {
    final currentModel = localStorage.values.firstWhere(
      (element) => element.id == exerciseId,
      orElse: () => throw Exception('Exercise ${exerciseId} does not exist'),
    );

    final updatedModel = ExerciseModel(
      id: currentModel.id,
      oneRm: currentModel.oneRm,
      name: currentModel.name,
      incrementation: currentModel.incrementation,
      month: currentModel.month,
      note: currentModel.note,
      weekIndex: week.index,
    );

    await tryOrCrash(
      () => localStorage.put(exerciseId, updatedModel),
      (_) => throw Exception(),
    );

    return unit;
  }
}

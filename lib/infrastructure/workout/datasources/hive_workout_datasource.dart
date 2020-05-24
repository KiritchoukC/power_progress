import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../core/util/util_functions.dart';
import '../../../domain/core/entities/week_enum.dart';
import '../models/workout_done_model.dart';
import 'i_workout_datasource.dart';

class HiveWorkoutDatasource implements IWorkoutDatasource {
  final Box<WorkoutDoneModel> localStorage;

  HiveWorkoutDatasource({@required this.localStorage}) : assert(localStorage != null);

  @override
  Future<List<WorkoutDoneModel>> getWorkoutsDone(int exerciseId) async {
    return await tryOrCrash(
      () => localStorage.values.toList(),
      (_) => throw Exception(),
    );
  }

  @override
  Future<Unit> markDone(int exerciseId, int month, WeekEnum week, int repsDone) async {
    final model = WorkoutDoneModel(
      exerciseId: exerciseId,
      month: month,
      weekIndex: week.index,
      repsDone: repsDone,
    );

    final int addedId = await tryOrCrash(
      () => localStorage.add(model),
      (_) => throw Exception(),
    );

    model.id = addedId;

    await tryOrCrash(
      () => localStorage.put(addedId, model),
      (_) => throw Exception(),
    );

    return unit;
  }

  @override
  Future<Unit> remove(int id) async {
    await tryOrCrash(
      () => localStorage.delete(id),
      (_) => throw Exception(),
    );

    return unit;
  }
}

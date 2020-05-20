import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../core/util/util_functions.dart';
import '../../../domain/core/entities/weeks.dart';
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
  Future<Unit> markDone(int exerciseciseId, int month, WeekEnum week, int repsDone) async {
    await tryOrCrash(
      () => localStorage.add(
        WorkoutDoneModel(
          exerciseId: exerciseciseId,
          month: month,
          weekIndex: week.index,
          repsDone: repsDone,
        ),
      ),
      (_) => throw Exception(),
    );

    return unit;
  }

  @override
  Future<Unit> remove(int exerciseId) async {
    await tryOrCrash(
      () => localStorage.deleteAll([exerciseId]),
      (_) => throw Exception(),
    );

    return unit;
  }
}

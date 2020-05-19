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
  Future<List<Map<int, WeekEnum>>> getWorkoutsDone(int exerciseId) async {
    return await tryOrCrash(
      () => localStorage.values
          .where((element) => element.exerciseId == exerciseId)
          .map((e) => {e.month: WeekEnum.values[e.weekIndex]})
          .toList(),
      (_) => throw Exception(),
    );
  }

  @override
  Future<Unit> markDone(int exerciseciseId, int month, WeekEnum week) async {
    await tryOrCrash(
      () => localStorage.add(
        WorkoutDoneModel(
          exerciseId: exerciseciseId,
          month: month,
          weekIndex: week.index,
        ),
      ),
      (_) => throw Exception(),
    );

    return unit;
  }
}

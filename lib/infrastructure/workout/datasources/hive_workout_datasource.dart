import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/domain/core/value_objects/month.dart';
import 'package:power_progress/domain/core/week_enum.dart';
import 'package:power_progress/infrastructure/workout/models/workout_done_model.dart';
import 'package:power_progress/infrastructure/workout/datasources/i_workout_datasource.dart';

class HiveWorkoutDatasource implements IWorkoutDatasource {
  final Box<WorkoutDoneModel> localStorage;

  HiveWorkoutDatasource({@required this.localStorage}) : assert(localStorage != null);

  @override
  Future<List<WorkoutDoneModel>> getWorkoutsDone(int exerciseId) async {
    return localStorage.values.where((element) => element.exerciseId == exerciseId).toList();
  }

  @override
  Future<Unit> markDone(int exerciseId, Month month, WeekEnum week, Option<int> repsDone) async {
    final model = WorkoutDoneModel.toModel(exerciseId, month, week, repsDone);

    final int addedId = await localStorage.add(model);

    model.id = addedId;

    await localStorage.put(addedId, model);

    return unit;
  }

  @override
  Future<Unit> remove(int id) async {
    await localStorage.delete(id);

    return unit;
  }

  @override
  Future<Unit> removeByExerciseId(int exerciseId) async {
    final workoutsDone = await getWorkoutsDone(exerciseId);
    final workoutsDoneIds = workoutsDone.map((x) => x.id);
    await localStorage.deleteAll(workoutsDoneIds);
    return unit;
  }
}

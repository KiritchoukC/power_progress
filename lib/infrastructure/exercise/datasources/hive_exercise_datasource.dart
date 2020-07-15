import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/domain/errors.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/infrastructure/exercise/models/exercise_model.dart';
import 'package:power_progress/infrastructure/exercise/datasources/i_exercise_datasource.dart';

class HiveExerciseDatasource implements IExerciseDatasource {
  final Box<ExerciseModel> localStorage;

  HiveExerciseDatasource({@required this.localStorage}) : assert(localStorage != null);

  @override
  Future<int> add(ExerciseModel exercise) async {
    // insert and retrieve auto-increment id
    final int insertedId = await localStorage.add(exercise);

    // add generated id to the exercise
    exercise.id = insertedId;

    // update exercise with generated id
    await localStorage.put(insertedId, exercise);

    return insertedId;
  }

  @override
  Future<List<ExerciseModel>> get exercises async => localStorage.values.toList();

  @override
  Future<Unit> remove(List<int> ids) async {
    await localStorage.deleteAll(ids);

    return unit;
  }

  @override
  Future<Unit> updateNextWeek(int exerciseId, WeekEnum nextWeek) async {
    final currentModelOption = await getById(exerciseId);

    return currentModelOption.fold(
      () => throw ItemDoesNotExistError(),
      (currentModel) async {
        currentModel.nextWeekIndex = nextWeek.index();

        await currentModel.save();

        return unit;
      },
    );
  }

  @override
  Future<Unit> updateNextMonth(int exerciseId, Month nextMonth) async {
    final currentModelOption = await getById(exerciseId);

    return currentModelOption.fold(
      () => throw ItemDoesNotExistError(),
      (currentModel) async {
        currentModel.month = nextMonth.getOrCrash();

        await currentModel.save();

        return unit;
      },
    );
  }

  @override
  Future<Option<ExerciseModel>> getById(int exerciseId) async {
    final model = localStorage.values.firstWhere(
      (element) => element.id == exerciseId,
      orElse: () => null,
    );

    return model == null ? none() : some(model);
  }
}

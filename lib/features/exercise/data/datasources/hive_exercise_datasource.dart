import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../models/exercise_model.dart';
import 'i_exercise_datasource.dart';

class HiveExerciseDatasource implements IExerciseDatasource {
  final Box<ExerciseModel> localStorage;

  HiveExerciseDatasource({@required this.localStorage}) : assert(localStorage != null);

  @override
  Future<ExerciseModel> add(ExerciseModel exercise) async {
    // insert and retrieve auto-increment id
    final int id = await localStorage.add(exercise);
    // add generated id to the exercise
    exercise.id = id;
    // update exercise with generated id
    localStorage.put(id, exercise);

    return exercise;
  }

  @override
  Future<List<ExerciseModel>> get() {
    return Future.value(localStorage.values.toList());
  }
}

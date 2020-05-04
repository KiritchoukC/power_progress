import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/exercise.dart';
import 'i_exercise_datasource.dart';

class HiveExerciseDatasource implements IExerciseDatasource {
  final Box<Exercise> localStorage;

  HiveExerciseDatasource({@required this.localStorage}) : assert(localStorage != null);

  @override
  Future<Exercise> add(Exercise exercise) async {
    // insert and retrieve auto-increment id
    final int id = await localStorage.add(exercise);
    // add generated id to the exercise
    final result = exercise.copyWith(id: id);
    // update exercise with generated id
    localStorage.put(id, result);

    return result;
  }
}

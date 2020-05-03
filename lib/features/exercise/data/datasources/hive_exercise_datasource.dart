import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/exercise.dart';
import 'i_exercise_datasource.dart';

const highscoreKey = 'hive_highscore_key';

class HiveExerciseDatasource implements IExerciseDatasource {
  final Box<Exercise> localStorage;

  HiveExerciseDatasource({@required this.localStorage}) : assert(localStorage != null);

  @override
  Future add(Exercise exercise) {
    // TODO: implement add
    throw UnimplementedError();
  }
}

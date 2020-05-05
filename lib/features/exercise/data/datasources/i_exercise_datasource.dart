import '../models/exercise_model.dart';

abstract class IExerciseDatasource {
  Future<ExerciseModel> add(ExerciseModel exercise);
}

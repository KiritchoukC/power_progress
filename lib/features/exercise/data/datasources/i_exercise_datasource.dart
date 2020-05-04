import '../../domain/entities/exercise.dart';

abstract class IExerciseDatasource {
  Future<Exercise> add(Exercise exercise);
}

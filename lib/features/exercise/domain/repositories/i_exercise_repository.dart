import '../entities/exercise.dart';

abstract class IExerciseRepository {
  Future<Exercise> add(Exercise exercise);
  Future<List<Exercise>> get();
}

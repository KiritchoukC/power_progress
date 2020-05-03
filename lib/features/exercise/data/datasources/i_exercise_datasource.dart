import '../../domain/entities/exercise.dart';

abstract class IExerciseDatasource {
  Future add(Exercise exercise);
}

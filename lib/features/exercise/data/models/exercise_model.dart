import 'package:hive/hive.dart';
import 'package:power_progress/features/exercise/domain/entities/exercise.dart';

part 'exercise_model.g.dart';

@HiveType(typeId: 0)
class ExerciseModel {
  @HiveField(0)
  int id;
  @HiveField(1)
  double oneRm;
  @HiveField(2)
  String name;
  @HiveField(3)
  double incrementation;
  @HiveField(4)
  String note;

  ExerciseModel({
    this.id,
    this.oneRm,
    this.name,
    this.incrementation,
    this.note,
  });

  factory ExerciseModel.fromEntity(Exercise exercise) {
    return ExerciseModel(
      id: exercise.id,
      oneRm: exercise.oneRm,
      name: exercise.name,
      incrementation: exercise.incrementation,
      note: exercise.note,
    );
  }

  static Exercise toEntity(ExerciseModel model) {
    return Exercise(
      id: model.id,
      oneRm: model.oneRm,
      name: model.name,
      incrementation: model.incrementation,
      note: model.note,
    );
  }
}

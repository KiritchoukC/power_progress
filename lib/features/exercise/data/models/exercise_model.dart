import 'package:hive/hive.dart';
import 'package:power_progress/features/exercise/domain/entities/exercise.dart';
import 'package:power_progress/features/exercise/domain/entities/value_objects/exercise_name.dart';
import 'package:power_progress/features/exercise/domain/entities/value_objects/incrementation.dart';
import 'package:power_progress/features/exercise/domain/entities/value_objects/note.dart';
import 'package:power_progress/features/exercise/domain/entities/value_objects/one_rm.dart';

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
      oneRm: exercise.oneRm.getOrCrash(),
      name: exercise.name.getOrCrash(),
      incrementation: exercise.incrementation.getOrCrash(),
      note: exercise.note?.getOrCrash(),
    );
  }

  static Exercise toEntity(ExerciseModel model) {
    return Exercise(
      id: model.id,
      oneRm: OneRm(model.oneRm),
      name: ExerciseName(model.name),
      incrementation: Incrementation(model.incrementation),
      note: Note(model.note),
    );
  }
}

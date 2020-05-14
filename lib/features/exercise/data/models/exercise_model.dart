import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/exercise.dart';
import '../../domain/entities/value_objects/exercise_name.dart';
import '../../domain/entities/value_objects/incrementation.dart';
import '../../domain/entities/value_objects/month.dart';
import '../../domain/entities/value_objects/note.dart';
import '../../domain/entities/value_objects/one_rm.dart';
import '../../domain/entities/value_objects/week.dart';

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
  @HiveField(5)
  int month;
  @HiveField(6)
  int weekIndex;

  ExerciseModel({
    @required this.id,
    @required this.oneRm,
    @required this.name,
    @required this.incrementation,
    @required this.month,
    @required this.weekIndex,
    @required this.note,
  });

  factory ExerciseModel.fromEntity(Exercise exercise) {
    return ExerciseModel(
      id: exercise.id,
      oneRm: exercise.oneRm.getOrCrash(),
      name: exercise.name.getOrCrash(),
      incrementation: exercise.incrementation.getOrCrash(),
      month: exercise.month.getOrCrash(),
      weekIndex: exercise.week.getOrCrash().index,
      note: exercise.note?.getOrCrash(),
    );
  }

  static Exercise toEntity(ExerciseModel model) {
    return Exercise(
      id: model.id,
      oneRm: OneRm(model.oneRm),
      name: ExerciseName(model.name),
      incrementation: Incrementation(model.incrementation),
      month: Month(model.month ?? 1),
      week: Week.parse(model.weekIndex ?? 0),
      note: Note(model.note),
    );
  }
}

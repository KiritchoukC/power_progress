import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import 'package:power_progress/domain/core/week_enum.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/value_objects/exercise_name.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/core/value_objects/month.dart';
import 'package:power_progress/domain/exercise/value_objects/note.dart';
import 'package:power_progress/domain/exercise/value_objects/week.dart';

part 'exercise_model.g.dart';

@HiveType(typeId: 0)
class ExerciseModel {
  @HiveField(0)
  int id;
  @HiveField(2)
  String name;
  @HiveField(3)
  double incrementation;
  @HiveField(4)
  String note;
  @HiveField(5)
  int month;
  @HiveField(6)
  int nextWeekIndex;

  ExerciseModel({
    @required this.id,
    @required this.name,
    @required this.incrementation,
    @required this.month,
    @required this.nextWeekIndex,
    @required this.note,
  });

  factory ExerciseModel.fromEntity(Exercise exercise) {
    return ExerciseModel(
      id: exercise.id,
      name: exercise.name.getOrCrash(),
      incrementation: exercise.incrementation.getOrCrash(),
      month: exercise.month.getOrCrash(),
      nextWeekIndex: exercise.nextWeek.getOrCrash().index(),
      note: exercise.note?.getOrCrash(),
    );
  }

  static Exercise toEntity(ExerciseModel model) {
    return Exercise(
      id: model.id,
      name: ExerciseName(model.name),
      incrementation: Incrementation(model.incrementation),
      month: Month(model.month ?? 1),
      nextWeek: Week.parse(model.nextWeekIndex ?? 0),
      note: Note(model.note),
    );
  }
}

import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/exercise/value_objects/exercise_name.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/exercise/value_objects/note.dart';
import 'package:power_progress/domain/exercise/value_objects/week.dart';

class Exercise {
  final int id;
  final ExerciseName name;
  final Incrementation incrementation;
  final Month month;
  final Week nextWeek;
  final Note note;

  Exercise({
    @required this.id,
    @required this.name,
    @required this.incrementation,
    @required this.month,
    @required this.nextWeek,
    this.note,
  });
}

extension ExerciseCopyWithExtension on Exercise {
  Exercise copyWith({
    int id,
    ExerciseName name,
    Incrementation incrementation,
    Month month,
    Week nextWeek,
    Note note,
  }) {
    return Exercise(
      id: id ?? this.id,
      name: name ?? this.name,
      incrementation: incrementation ?? this.incrementation,
      month: month ?? this.month,
      nextWeek: nextWeek ?? this.nextWeek,
      note: note ?? this.note,
    );
  }
}

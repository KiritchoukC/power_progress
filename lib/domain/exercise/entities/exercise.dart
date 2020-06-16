import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/exercise/entities/value_objects/exercise_name.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/incrementation.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/note.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/week.dart';

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

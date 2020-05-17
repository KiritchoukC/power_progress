import 'package:flutter/foundation.dart';

import 'value_objects/exercise_name.dart';
import 'value_objects/incrementation.dart';
import 'value_objects/month.dart';
import 'value_objects/note.dart';
import 'value_objects/one_rm.dart';
import 'value_objects/week.dart';

class Exercise {
  final int id;
  final OneRm oneRm;
  final ExerciseName name;
  final Incrementation incrementation;
  final Month month;
  final Week week;
  final Note note;

  Exercise({
    @required this.id,
    @required this.oneRm,
    @required this.name,
    @required this.incrementation,
    @required this.month,
    @required this.week,
    this.note,
  });
}

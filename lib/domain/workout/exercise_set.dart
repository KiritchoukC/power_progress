import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/workout/value_objects/weight.dart';

class ExerciseSet {
  final int sets;
  final int reps;
  final Weight weight;
  final bool isAmrap;

  const ExerciseSet({
    @required this.sets,
    @required this.reps,
    @required this.weight,
    this.isAmrap = false,
  });
}

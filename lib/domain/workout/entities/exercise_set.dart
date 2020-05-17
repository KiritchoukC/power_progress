import 'package:flutter/foundation.dart';

class ExerciseSet {
  final int sets;
  final int reps;
  final double weight;
  final bool isAmrap;

  const ExerciseSet({
    @required this.sets,
    @required this.reps,
    @required this.weight,
    this.isAmrap = false,
  });
}

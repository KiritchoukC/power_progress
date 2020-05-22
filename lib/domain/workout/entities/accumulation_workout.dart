import 'package:flutter/foundation.dart';

import 'exercise_set.dart';
import 'value_objects/weight.dart';
import 'workout.dart';
import 'workout_failure.dart';

class AccumulationWorkout extends Workout {
  AccumulationWorkout({
    @required int month,
    @required double oneRm,
    @required bool isDone,
    @required int workoutDoneId,
  }) : super(
          month: month,
          oneRm: oneRm,
          isDone: isDone,
          exerciseSets: _getExerciseSets(month, oneRm),
          workoutDoneId: workoutDoneId,
        );
}

List<ExerciseSet> _getExerciseSets(int month, double oneRm) {
  switch (month) {
    case 1:
      return [ExerciseSet(reps: 10, sets: 5, weight: Weight(oneRm * 0.6))];
    case 2:
      return [ExerciseSet(reps: 8, sets: 5, weight: Weight(oneRm * 0.65))];
    case 3:
      return [ExerciseSet(reps: 5, sets: 6, weight: Weight(oneRm * 0.7))];
    case 4:
      return [ExerciseSet(reps: 3, sets: 7, weight: Weight(oneRm * 0.75))];
    default:
      throw const UnexpectedError();
  }
}

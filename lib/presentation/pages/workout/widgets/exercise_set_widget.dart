import 'package:flutter/material.dart';

import 'package:power_progress/domain/workout/entities/exercise_set.dart';

class ExerciseSetWidget extends StatelessWidget {
  final ExerciseSet exerciseSet;

  TextStyle _getTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1;
  }

  const ExerciseSetWidget({Key key, @required this.exerciseSet}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 30,
          child: Text(
            exerciseSet.sets.toString(),
            style: _getTextStyle(context),
          ),
        ),
        Container(
          width: 30,
          child: Text(
            'X',
            style: _getTextStyle(context),
          ),
        ),
        Container(
          width: 30,
          child: Text(
            exerciseSet.reps.toString(),
            style: _getTextStyle(context),
          ),
        ),
        Container(
          width: 30,
          child: Text(
            '@',
            style: _getTextStyle(context),
          ),
        ),
        Container(
          width: 60,
          child: Text(
            exerciseSet.weight.formattedValue.getOrElse(() => 'E'),
            style: _getTextStyle(context),
          ),
        ),
      ],
    );
  }
}

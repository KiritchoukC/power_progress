import 'package:flutter/material.dart';

import 'package:power_progress/domain/workout/exercise_set.dart';
import 'package:power_progress/theme/pp_light_theme.dart';

class ExerciseSetWidget extends StatelessWidget {
  final ExerciseSet exerciseSet;
  final bool isWeekDone;

  TextStyle _getTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1;
  }

  TextStyle _getRepsStyle(BuildContext context) {
    if (exerciseSet.isAmrap) {
      if (isWeekDone) {
        return _getTextStyle(context).copyWith(
          color: PPTheme.success,
        );
      }

      return _getTextStyle(context).copyWith(
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.dotted,
        decorationThickness: 2,
        color: Colors.grey,
      );
    }

    return _getTextStyle(context);
  }

  const ExerciseSetWidget({
    Key key,
    @required this.exerciseSet,
    @required this.isWeekDone,
  }) : super(key: key);
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
            style: _getRepsStyle(context),
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

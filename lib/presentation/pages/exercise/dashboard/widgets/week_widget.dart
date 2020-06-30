import 'package:flutter/material.dart';

import 'package:power_progress/domain/exercise/exercise.dart';

class WeekWidget extends StatelessWidget {
  const WeekWidget({
    Key key,
    @required this.exercise,
  }) : super(key: key);

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return Text(
      exercise.nextWeek.displayName,
      style: Theme.of(context).textTheme.bodyText1.apply(
            color: Theme.of(context).accentColor,
          ),
    );
  }
}

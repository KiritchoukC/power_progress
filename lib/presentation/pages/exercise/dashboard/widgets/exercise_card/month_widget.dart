import 'package:flutter/material.dart';

import 'package:power_progress/domain/exercise/exercise.dart';

class MonthWidget extends StatelessWidget {
  const MonthWidget({
    Key key,
    @required this.exercise,
  }) : super(key: key);

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Month ${exercise.month.getOrCrash()}',
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}

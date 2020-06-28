import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/week/week_bloc.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/value_objects/week.dart';

class WeekWidget extends StatelessWidget {
  const WeekWidget({
    Key key,
    @required this.exercise,
  }) : super(key: key);

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<WeekBloc, WeekState>(
    //   condition: (previous, current) => current.exerciseId == exercise.id,
    //   builder: (context, state) {
    //     Widget _progress() => Text(
    //           'next week workout',
    //           style: Theme.of(context).textTheme.bodyText1.apply(
    //                 color: Theme.of(context).accentColor.withAlpha(50),
    //               ),
    //         );

    //     Widget _nextWeek(_, Week week) => Text(
    //           week.displayName,
    //           style: Theme.of(context).textTheme.bodyText1.apply(
    //                 color: Theme.of(context).accentColor,
    //               ),
    //         );

    //     Widget _initialWeek(_) => Text(
    //           exercise.nextWeek.displayName,
    //           style: Theme.of(context).textTheme.bodyText1.apply(
    //                 color: Theme.of(context).accentColor,
    //               ),
    //         );

    //     return state.maybeWhen(
    //       initial: _initialWeek,
    //       weekUpdated: _nextWeek,
    //       orElse: _progress,
    //     );
    //   },
    // );

    return Text(
      exercise.nextWeek.displayName,
      style: Theme.of(context).textTheme.bodyText1.apply(
            color: Theme.of(context).accentColor,
          ),
    );
  }
}

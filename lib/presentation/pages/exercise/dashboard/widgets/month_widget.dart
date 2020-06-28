import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_progress/application/exercise/month/month_bloc.dart';

import 'package:power_progress/domain/exercise/exercise.dart';

class MonthWidget extends StatelessWidget {
  const MonthWidget({
    Key key,
    @required this.exercise,
  }) : super(key: key);

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MonthBloc, MonthState>(
      condition: (previous, current) => current.exerciseId == exercise.id,
      builder: (context, state) {
        Widget _progress() => Text(
              'Month ?',
              style: Theme.of(context).textTheme.subtitle2.apply(
                    color: Colors.black54.withAlpha(50),
                  ),
            );

        Widget _fetch(_) {
          context.bloc<MonthBloc>().add(MonthEvent.fetch(exerciseId: exercise.id));

          return _progress();
        }

        Widget _month(exerciseId, month) {
          return Text(
            'Month ${month.getOrCrash()}',
            style: Theme.of(context).textTheme.subtitle2.apply(
                  color: Colors.black54,
                ),
          );
        }

        return state.maybeWhen(
          initial: _fetch,
          monthUpdated: _month,
          fetched: _month,
          orElse: _progress,
        );
      },
    );
  }
}

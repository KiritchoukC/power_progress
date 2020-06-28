import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/one_rm/one_rm_bloc.dart';
import 'package:power_progress/domain/core/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/exercise.dart';

class OneRmWidget extends StatelessWidget {
  const OneRmWidget({
    Key key,
    @required this.exercise,
  }) : super(key: key);

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OneRmBloc, OneRmState>(
      condition: (previous, current) => current.maybeWhen(
        initial: (exerciseId) => exerciseId == exercise.id,
        generatedAndSaved: (exerciseId, _) => exerciseId == exercise.id,
        fetched: (exerciseId, _) => exerciseId == exercise.id,
        orElse: () => false,
      ),
      builder: (context, state) {
        // happens when loading the one rm
        Widget _progress() => Text(
              '0.0 Kg',
              style: Theme.of(context).textTheme.subtitle1.apply(
                    color: Colors.black54.withAlpha(20),
                  ),
            );

        // fetch the one rm
        Widget _fetch(_) {
          context
              .bloc<OneRmBloc>()
              .add(OneRmEvent.fetch(exerciseId: exercise.id, month: exercise.month));

          return _progress();
        }

        // show the one rm.
        Widget _oneRm(_, OneRm oneRm) => Text(
              '${oneRm.getOrCrash()} Kg',
              style: Theme.of(context).textTheme.subtitle1.apply(
                    color: Colors.black54,
                  ),
            );

        // react to state
        return state.maybeWhen(
          initial: _fetch,
          generatedAndSaved: _oneRm,
          fetched: _oneRm,
          orElse: _progress,
        );
      },
    );
  }
}
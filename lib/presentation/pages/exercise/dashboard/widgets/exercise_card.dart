import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/month/month_bloc.dart';
import 'package:power_progress/application/exercise/week/week_bloc.dart';
import 'package:power_progress/application/one_rm/one_rm_bloc.dart';
import 'package:power_progress/domain/core/value_objects/month.dart';
import 'package:power_progress/domain/core/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/value_objects/week.dart';
import 'package:power_progress/presentation/router/route_paths.dart';
import 'package:power_progress/presentation/pages/workout/workout_page.dart';

class ExerciseCard extends StatefulWidget {
  final Exercise exercise;
  final VoidCallback onSelect;
  final bool isInSelectionMode;
  final bool isSelected;

  const ExerciseCard({
    Key key,
    @required this.onSelect,
    @required this.exercise,
    @required this.isInSelectionMode,
    @required this.isSelected,
  }) : super(key: key);

  @override
  _ExerciseCardState createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      child: InkWell(
        onLongPress: () {
          widget.onSelect();
        },
        onTap: () {
          if (widget.isInSelectionMode) {
            widget.onSelect();
            return;
          }

          Navigator.of(context).pushNamed(
            RoutePaths.exerciseWorkout,
            arguments: WorkoutPageArguments(exercise: widget.exercise),
          );
        },
        child: Container(
          color: widget.isSelected ? Colors.blue.shade100 : null,
          height: 100,
          child: _Card(exercise: widget.exercise),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final Exercise exercise;

  const _Card({
    Key key,
    @required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                exercise.name.getOrCrash(),
                style: Theme.of(context).textTheme.headline6.apply(
                      color: Colors.grey.shade700,
                    ),
              ),
              _OneRmWidget(exercise: exercise),
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Theme.of(context).accentColor,
                  ),
                  _WeekWidget(exercise: exercise),
                ],
              )
            ],
          ),
          Column(
            children: [
              _MonthWidget(exercise: exercise),
            ],
          ),
        ],
      ),
    );
  }
}

class _OneRmWidget extends StatelessWidget {
  const _OneRmWidget({
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

class _WeekWidget extends StatelessWidget {
  const _WeekWidget({
    Key key,
    @required this.exercise,
  }) : super(key: key);

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeekBloc, WeekState>(
      condition: (previous, current) => current.exerciseId == exercise.id,
      builder: (context, state) {
        Widget _progress() => Text(
              'next week workout',
              style: Theme.of(context).textTheme.bodyText1.apply(
                    color: Theme.of(context).accentColor.withAlpha(50),
                  ),
            );

        Widget _nextWeek(_, Week week) => Text(
              week.displayName,
              style: Theme.of(context).textTheme.bodyText1.apply(
                    color: Theme.of(context).accentColor,
                  ),
            );

        Widget _initialWeek(_) => Text(
              exercise.nextWeek.displayName,
              style: Theme.of(context).textTheme.bodyText1.apply(
                    color: Theme.of(context).accentColor,
                  ),
            );

        return state.maybeWhen(
          initial: _initialWeek,
          weekUpdated: _nextWeek,
          orElse: _progress,
        );
      },
    );
  }
}

class _MonthWidget extends StatelessWidget {
  const _MonthWidget({
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
          print([exerciseId, month]);
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

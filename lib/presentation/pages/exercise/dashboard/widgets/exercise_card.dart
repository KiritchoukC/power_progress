import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/application/exercise/month/month_bloc.dart';
import 'package:power_progress/application/exercise/week/week_bloc.dart';
import 'package:power_progress/application/one_rm/one_rm_bloc.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';

import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/week.dart';
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
              BlocBuilder<OneRmBloc, OneRmState>(
                builder: (context, state) {
                  // happens when loading the one rm
                  Widget _progress() => Text(
                        '0.0 Kg',
                        style: Theme.of(context).textTheme.subtitle1.apply(
                              color: Colors.black54.withAlpha(20),
                            ),
                      );

                  // fetch the one rm
                  Widget _fetch() {
                    context
                        .bloc<OneRmBloc>()
                        .add(OneRmEvent.fetch(exerciseId: exercise.id, month: exercise.month));

                    return _progress();
                  }

                  // show the one rm.
                  Widget _oneRm(OneRm oneRm) => Text(
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
              ),
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Theme.of(context).accentColor,
                  ),
                  BlocBuilder<WeekBloc, WeekState>(
                    builder: (context, state) {
                      Widget _progress() => Text(
                            'next week workout',
                            style: Theme.of(context).textTheme.bodyText1.apply(
                                  color: Theme.of(context).accentColor.withAlpha(50),
                                ),
                          );

                      Widget _nextWeek(Week week) => Text(
                            week.displayName,
                            style: Theme.of(context).textTheme.bodyText1.apply(
                                  color: Theme.of(context).accentColor,
                                ),
                          );

                      Widget _initialWeek() => Text(
                            exercise.nextWeek.displayName,
                            style: Theme.of(context).textTheme.bodyText1.apply(
                                  color: Theme.of(context).accentColor,
                                ),
                          );

                      return state.maybeWhen(
                        initial: _initialWeek,
                        weekUpdated: _nextWeek,
                        weekUpdateInProgress: _progress,
                        orElse: _progress,
                      );
                    },
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              BlocBuilder<MonthBloc, MonthState>(
                builder: (context, state) {
                  Widget _progress() => Text(
                        'Month ${exercise.month.getOrCrash()}',
                        style: Theme.of(context).textTheme.subtitle2.apply(
                              color: Colors.black54.withAlpha(50),
                            ),
                      );

                  Widget _initialMonth() => Text(
                        'Month ${exercise.month.getOrCrash()}',
                        style: Theme.of(context).textTheme.subtitle2.apply(
                              color: Colors.black54,
                            ),
                      );

                  Widget _month(Month month) => Text(
                        'Month ${month.getOrCrash()}',
                        style: Theme.of(context).textTheme.subtitle2.apply(
                              color: Colors.black54,
                            ),
                      );

                  return state.maybeWhen(
                    initial: _initialMonth,
                    monthUpdateInProgress: _progress,
                    monthUpdated: _month,
                    orElse: _progress,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

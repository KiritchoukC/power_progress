import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/month_widget.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/one_rm_widget.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/week_widget.dart';
import 'package:power_progress/presentation/pages/workout/workout_page.dart';

class ExerciseCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: OpenContainer(
        closedBuilder: (context, openContainer) {
          return InkWell(
            onLongPress: () {
              onSelect();
            },
            onTap: () {
              if (isInSelectionMode) {
                onSelect();
                return;
              }
              openContainer();
            },
            child: Container(
              color: isSelected ? Theme.of(context).selectedRowColor : null,
              height: 100,
              child: _Card(exercise: exercise),
            ),
          );
        },
        closedColor: Theme.of(context).cardColor,
        closedElevation: 1,
        tappable: false,
        openBuilder: (context, action) {
          return WorkoutPage(exercise: exercise);
        },
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
                style: Theme.of(context).textTheme.headline6,
              ),
              OneRmWidget(exercise: exercise),
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Theme.of(context).accentColor,
                  ),
                  WeekWidget(exercise: exercise),
                ],
              )
            ],
          ),
          Column(
            children: [
              MonthWidget(exercise: exercise),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../domain/entities/exercise.dart';

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
          }
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

  const _Card({Key key, @required this.exercise}) : super(key: key);

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
              Text(
                '${exercise.oneRm.getOrCrash()} Kg',
                style: Theme.of(context).textTheme.subtitle1.apply(
                      color: Colors.black54,
                    ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Theme.of(context).accentColor,
                  ),
                  Text(
                    'Accumulation',
                    style: Theme.of(context).textTheme.bodyText1.apply(
                          color: Theme.of(context).accentColor,
                        ),
                  ),
                ],
              )
            ],
          ),
          Column(children: [
            Text(
              'Month ${exercise.month.getOrCrash()}',
              style: Theme.of(context).textTheme.subtitle2.apply(
                    color: Colors.black54,
                  ),
            ),
          ])
        ],
      ),
    );
  }
}

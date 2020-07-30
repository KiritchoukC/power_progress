import 'package:flutter/material.dart';

class ExercisePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.extent(
        maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
        scrollDirection: Axis.horizontal,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        shrinkWrap: true,
        children: [
          _ExerciseTile(color: Colors.red, child: Center(child: Text('Bench press'))),
          _ExerciseTile(color: Colors.purple, child: Center(child: Text('Deadlift'))),
          _ExerciseTile(color: Colors.green, child: Center(child: Text('Clean & Jerk'))),
          _ExerciseTile(color: Colors.blue, child: Center(child: Text('Squat'))),
          _ExerciseTile(color: Colors.yellow, child: Center(child: Text('Snatch'))),
          _ExerciseTile(color: Colors.transparent, child: Center(child: Text('Other'))),
        ],
      ),
    );
  }
}

class _ExerciseTile extends StatelessWidget {
  final Color color;
  final Widget child;

  const _ExerciseTile({
    Key key,
    @required this.color,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Material(
      color: color,
      child: child,
    ));
  }
}

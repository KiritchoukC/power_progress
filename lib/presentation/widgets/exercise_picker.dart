import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:power_progress/presentation/theme/gradients.dart';

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
        padding: EdgeInsets.only(bottom: 10),
        children: [
          _ExerciseTile(gradient: burningOrangeGradient, exerciseName: 'Bench press'),
          _ExerciseTile(gradient: citrusPeelGradient, exerciseName: 'Deadlift'),
          _ExerciseTile(gradient: blueRaspberryGradient, exerciseName: 'Clean & Jerk'),
          _ExerciseTile(gradient: ohhappinessGradient, exerciseName: 'Squat'),
          _ExerciseTile(gradient: orcaGradient, exerciseName: 'Snatch'),
          _ExerciseTile(gradient: haikusGradient, exerciseName: 'Custom'),
        ],
      ),
    );
  }
}

class _ExerciseTile extends StatelessWidget {
  final Gradient gradient;
  final String exerciseName;

  const _ExerciseTile({
    Key key,
    @required this.gradient,
    @required this.exerciseName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 3.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: GridTile(
            footer: MaterialBanner(
              backgroundColor: Theme.of(context).backgroundColor.withAlpha(50),
              content: Text(exerciseName),
              actions: [Container()],
            ),
            child: Container(
              decoration: BoxDecoration(gradient: gradient),
              child: Center(
                child: Text('Img placeholder'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

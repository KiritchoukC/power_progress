import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:power_progress/presentation/theme/gradients.dart';
import 'package:power_progress/presentation/widgets/svg_wdigets/benchpress_svg_widget.dart';
import 'package:power_progress/presentation/widgets/svg_wdigets/clean_and_jerk_svg_widget.dart';
import 'package:power_progress/presentation/widgets/svg_wdigets/deadlift_svg_widget.dart';
import 'package:power_progress/presentation/widgets/svg_wdigets/squat_svg_widget.dart';

class ExercisePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GridView.extent(
          maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
          scrollDirection: Axis.vertical,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          children: [
            _ExerciseTile(
              gradient: burningOrangeGradient,
              exerciseName: 'Bench press',
              svg: BenchpressSvgWidget(),
            ),
            _ExerciseTile(
              gradient: citrusPeelGradient,
              exerciseName: 'Deadlift',
              svg: DeadliftSvgWidget(),
            ),
            _ExerciseTile(
              gradient: haikusGradient,
              exerciseName: 'Squat',
              svg: SquatSvgWidget(),
            ),
            _ExerciseTile(
              gradient: blueRaspberryGradient,
              exerciseName: 'Clean & Jerk',
              svg: CleanAndJerkSvgWidget(),
            ),
          ],
        ),
      ],
    );
  }
}

class _ExerciseTile extends StatelessWidget {
  final Gradient gradient;
  final String exerciseName;
  final Widget svg;

  const _ExerciseTile({
    Key key,
    @required this.gradient,
    @required this.exerciseName,
    @required this.svg,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
          transform: Transform.scale(scale: 0.8).transform,
        ),
        Positioned(
          top: 0,
          left: 5,
          child: Container(
            height: 30,
            child: Text(
              exerciseName,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ),
        Container(
          transform: Transform.translate(offset: Offset(20, 20)).transform,
          child: Container(
            transform: Transform.scale(scale: 0.8).transform,
            child: svg,
          ),
        ),
      ],
    );
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 3.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GridTile(
            footer: Container(
              height: 30,
              color: Theme.of(context).backgroundColor.withAlpha(50),
              child: Center(child: Text(exerciseName)),
            ),
            child: Container(
              decoration: BoxDecoration(gradient: gradient),
              child: Center(
                child: svg,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:power_progress/presentation/theme/gradients.dart';
import 'package:power_progress/presentation/widgets/svg_wdigets/benchpress_svg_widget.dart';
import 'package:power_progress/presentation/widgets/svg_wdigets/clean_and_jerk_svg_widget.dart';
import 'package:power_progress/presentation/widgets/svg_wdigets/deadlift_svg_widget.dart';
import 'package:power_progress/presentation/widgets/svg_wdigets/squat_svg_widget.dart';
import 'package:power_progress/presentation/widgets/utils/shadow_elevation.dart';

class ExercisePicker extends StatelessWidget {
  final Function(String) onExerciseTap;

  const ExercisePicker({
    @required this.onExerciseTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              onTap: onExerciseTap,
            ),
            _ExerciseTile(
              gradient: citrusPeelGradient,
              exerciseName: 'Deadlift',
              svg: DeadliftSvgWidget(),
              onTap: onExerciseTap,
            ),
            _ExerciseTile(
              gradient: haikusGradient,
              exerciseName: 'Squat',
              svg: SquatSvgWidget(),
              onTap: onExerciseTap,
            ),
            _ExerciseTile(
              gradient: namnGradient,
              exerciseName: 'Clean & Jerk',
              svg: CleanAndJerkSvgWidget(),
              onTap: onExerciseTap,
            ),
          ],
        ),
      ],
    );
  }
}

class _ExerciseTile extends StatelessWidget {
  final Function(String) onTap;
  final Gradient gradient;
  final String exerciseName;
  final Widget svg;

  final borderRadius = BorderRadius.circular(10);

  _ExerciseTile({
    Key key,
    @required this.onTap,
    @required this.gradient,
    @required this.exerciseName,
    @required this.svg,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _Background(
          gradient: gradient,
          borderRadius: borderRadius,
        ),
        Positioned(
          top: 3,
          left: 5,
          child: _Title(exerciseName: exerciseName),
        ),
        _Illustration(svg: svg),
        _Ripple(
          borderRadius: borderRadius,
          onTap: () {
            onTap(exerciseName);
          },
        ),
      ],
    );
  }
}

class _Ripple extends StatelessWidget {
  final Function() onTap;
  final BorderRadius borderRadius;

  const _Ripple({
    Key key,
    @required this.borderRadius,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: borderRadius,
          radius: 80,
          onTap: onTap,
        ),
      ),
    );
  }
}

class _Illustration extends StatelessWidget {
  const _Illustration({
    Key key,
    @required this.svg,
  }) : super(key: key);

  final Widget svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Transform.translate(offset: Offset(20, 20)).transform,
      child: Container(
        transform: Transform.scale(scale: 0.8).transform,
        child: svg,
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key key,
    @required this.exerciseName,
  }) : super(key: key);

  final String exerciseName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Text(
        exerciseName,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key key,
    @required this.gradient,
    @required this.borderRadius,
  }) : super(key: key);

  final Gradient gradient;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
        boxShadow: elevation3,
      ),
      transform: Transform.scale(scale: 0.8).transform,
    );
  }
}

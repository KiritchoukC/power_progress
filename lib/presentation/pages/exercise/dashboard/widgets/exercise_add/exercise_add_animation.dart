import 'package:flutter/material.dart';

class ExerciseAddAnimation extends StatelessWidget {
  final Widget child;

  const ExerciseAddAnimation({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOutExpo,
      builder: (BuildContext context, double value, Widget child) {
        return Transform.scale(
          scale: value,
          child: Transform.translate(
            offset: Offset(0, -value * 300),
            child: Opacity(
              opacity: value,
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }
}

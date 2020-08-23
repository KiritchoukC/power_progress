import 'package:flutter/material.dart';

/// Animation of the exercise add card container
class ExerciseAddAnimation extends StatelessWidget {
  /// Animated child
  final Widget child;

  /// Y transition of the animation
  static const double yTransition = 300;

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
            offset: Offset(0, -value * yTransition),
            child: Opacity(
              opacity: value,
              child: child,
            ),
          ),
        );
      },
      child: Transform.translate(
        offset: const Offset(0, yTransition),
        child: child,
      ),
    );
  }
}

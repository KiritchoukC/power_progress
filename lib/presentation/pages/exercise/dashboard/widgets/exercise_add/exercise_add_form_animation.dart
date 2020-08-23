import 'package:flutter/material.dart';

/// Animation of the exercise add card form
class ExerciseAddFormAnimation extends StatelessWidget {
  /// Animated child
  final Widget child;

  const ExerciseAddFormAnimation({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0.9, end: 1),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInCubic,
      builder: (BuildContext context, double value, Widget child) {
        return Transform.scale(
          scale: value,
          child: Opacity(
            opacity: value,
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}

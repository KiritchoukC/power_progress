import 'package:flutter/material.dart';

/// Animation of the exercise add card container
class ExerciseAddAnimation extends StatelessWidget {
  /// Animated child
  final Widget child;

  /// Y transition of the animation
  static const double yTransition = 10;

  const ExerciseAddAnimation({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOutExpo,
      builder: (BuildContext context, double value, Widget child) {
        return Transform.scale(
          scale: value,
          child: FractionalTranslation(
            translation: Offset(0, (1 - value) * yTransition),
            child: Opacity(
              opacity: value,
              child: child,
            ),
          ),
        );
      },
      child: FractionalTranslation(
        translation: const Offset(0, 0),
        child: child,
      ),
    );
  }
}

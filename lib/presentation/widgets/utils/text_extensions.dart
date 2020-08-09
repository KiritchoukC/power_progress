import 'package:flutter/material.dart';

extension HeroText on Text {
  Widget hero(Object tag) {
    return Hero(
      flightShuttleBuilder: (_, Animation<double> animation, HeroFlightDirection flightDirection,
          BuildContext fromHeroContext, BuildContext toHeroContext) {
        return AnimatedBuilder(
          animation: animation,
          builder: (_, _child) {
            return DefaultTextStyle.merge(
              child: _child,
              style: TextStyle.lerp(
                  ((fromHeroContext.widget as Hero).child as Text).style,
                  ((toHeroContext.widget as Hero).child as Text).style,
                  flightDirection == HeroFlightDirection.pop
                      ? 1 - animation.value
                      : animation.value),
            );
          },
          child: this,
        );
      },
      tag: tag,
      transitionOnUserGestures: true,
      child: this,
    );
  }
}

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class DeadliftSvgWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/exercises/deadlift.svg",
      semanticsLabel: 'Woman doing a deadlift',
    );
  }
}

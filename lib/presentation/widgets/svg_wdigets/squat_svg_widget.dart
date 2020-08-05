import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SquatSvgWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/exercises/squat.svg",
      semanticsLabel: 'Man doing a squat',
    );
  }
}

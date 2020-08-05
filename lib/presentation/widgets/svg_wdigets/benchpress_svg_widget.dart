import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class BenchpressSvgWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/exercises/benchpress.svg",
      semanticsLabel: 'Man doing a squat',
    );
  }
}

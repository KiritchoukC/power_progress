import 'package:flutter/material.dart';

import '../../../../../theme/pp_light_theme.dart';
import '../../../../router/route_paths.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushNamed(RoutePaths.exerciseAdd);
      },
      child: Ink(
        decoration: BoxDecoration(
          gradient: PPTheme.pinkYellowGradient,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
          alignment: Alignment.center,
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}

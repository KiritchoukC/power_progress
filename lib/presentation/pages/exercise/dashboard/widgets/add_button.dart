import 'package:flutter/material.dart';

import 'package:power_progress/presentation/widgets/main_button.dart';
import 'package:power_progress/presentation/router/route_paths.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainButton(
      onPressed: () {
        Navigator.of(context).pushNamed(RoutePaths.exerciseAdd);
      },
      icon: Icons.add,
    );
  }
}

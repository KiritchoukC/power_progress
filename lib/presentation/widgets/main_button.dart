import 'package:flutter/material.dart';
import 'package:power_progress/theme/pp_light_theme.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const MainButton({
    Key key,
    @required this.onPressed,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Ink(
        decoration: BoxDecoration(
          gradient: PPTheme.pinkYellowGradient,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
          alignment: Alignment.center,
          child: Icon(icon),
        ),
      ),
    );
  }
}

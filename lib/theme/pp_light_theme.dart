import 'package:flutter/material.dart';

class PPTheme {
  static ThemeData light() {
    return ThemeData.light().copyWith(
      primaryColor: Colors.black,
      accentColor: Colors.black,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
      ),
    );
  }

  static const Color pink = Color(0xFFED4264);
  static const Color yellow = Color(0xFFFFEDBC);
  static const Color success = Color(0xFF59C173);

  static LinearGradient pinkYellowGradient = const LinearGradient(
    colors: [
      PPTheme.pink,
      PPTheme.yellow,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.3, 1],
  );
}

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
}

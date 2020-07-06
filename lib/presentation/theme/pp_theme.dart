import 'package:flutter/material.dart';

class PPTheme {
  static ThemeData light() {
    return ThemeData.light().copyWith(
      primaryColor: Colors.black,
      accentColor: Colors.black,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
      ),
      selectedRowColor: Colors.blue.shade100,
      disabledColor: Colors.black54.withAlpha(20),
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.grey.shade700),
        subtitle1: const TextStyle(color: Colors.black54),
        subtitle2: const TextStyle(color: Colors.black54),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData.dark().copyWith(
      primaryColor: Colors.white,
      accentColor: Colors.white,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
      ),
      selectedRowColor: Colors.blue.shade900,
      disabledColor: Colors.white.withAlpha(20),
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.grey.shade100),
        subtitle1: const TextStyle(color: Colors.white70),
        subtitle2: const TextStyle(color: Colors.white70),
      ),
    );
  }

  static const Color pink = Color(0xFFED4264);
  static const Color yellow = Color(0xFFFFEDBC);
  static const Color success = Color(0xFF59C173);
  static const Color red = Color(0xFFEB5757);

  static LinearGradient pinkYellowGradient = const LinearGradient(
    colors: [
      PPTheme.pink,
      PPTheme.yellow,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.3, 1],
  );

  static LinearGradient purplePinkGradient = const LinearGradient(
    colors: [
      Color(0xFF654ea3),
      Color(0xFFeaafc8),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.3, 1],
  );

  static LinearGradient redBlackGradient = const LinearGradient(
    colors: [
      Colors.black,
      red,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.3, 1],
  );

  static LinearGradient royalBlueGradient = const LinearGradient(
    colors: [
      Color(0xFF292E49),
      Color(0xFF536976),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.3, 1],
  );
}

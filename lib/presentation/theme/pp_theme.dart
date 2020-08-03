import 'package:flutter/material.dart';

class PPTheme {
  static ThemeData light() {
    return ThemeData.light().copyWith(
      accentColor: Colors.black,
      cardColor: Colors.grey.shade200,
      primaryColor: Colors.black,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
      ),
      selectedRowColor: Colors.blue.shade100,
      disabledColor: Colors.black54.withAlpha(20),
      backgroundColor: Colors.grey.shade200,
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.grey.shade700),
        subtitle1: const TextStyle(color: Colors.black54),
        subtitle2: const TextStyle(color: Colors.black54),
        bodyText2: const TextStyle(color: Colors.black),
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.black,
        elevation: 10,
        shape: CircularNotchedRectangle(),
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
      backgroundColor: Colors.grey.shade900,
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.grey.shade100),
        subtitle1: const TextStyle(color: Colors.white70),
        subtitle2: const TextStyle(color: Colors.white70),
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.black,
        elevation: 10,
        shape: CircularNotchedRectangle(),
      ),
    );
  }

  static const Color pink = Color(0xFFED4264);
  static const Color yellow = Color(0xFFFFEDBC);
  static const Color success = Color(0xFF59C173);
  static const Color red = Color(0xFFEB5757);
}

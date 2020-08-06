// ignore_for_file: avoid_redundant_argument_values
import 'package:flutter/material.dart';

List<BoxShadow> elevation1 = const <BoxShadow>[
  BoxShadow(
    offset: Offset(0, 1),
    blurRadius: 1,
    spreadRadius: 0,
    color: Color.fromRGBO(0, 0, 0, 0.14),
  ),
  BoxShadow(
    offset: Offset(0, 2),
    blurRadius: 1,
    spreadRadius: -1,
    color: Color.fromRGBO(0, 0, 0, 0.12),
  ),
  BoxShadow(
    offset: Offset(0, 1),
    blurRadius: 3,
    spreadRadius: 0,
    color: Color.fromRGBO(0, 0, 0, 0.20),
  ),
];

List<BoxShadow> elevation2 = const <BoxShadow>[
  BoxShadow(
    offset: Offset(0, 2),
    blurRadius: 2,
    spreadRadius: 0,
    color: Color.fromRGBO(0, 0, 0, 0.14),
  ),
  BoxShadow(
    offset: Offset(0, 3),
    blurRadius: 1,
    spreadRadius: -2,
    color: Color.fromRGBO(0, 0, 0, 0.12),
  ),
  BoxShadow(
    offset: Offset(0, 1),
    blurRadius: 5,
    spreadRadius: 0,
    color: Color.fromRGBO(0, 0, 0, 0.20),
  ),
];

List<BoxShadow> elevation3 = const <BoxShadow>[
  BoxShadow(
    offset: Offset(0, 3),
    blurRadius: 4,
    spreadRadius: 0,
    color: Color.fromRGBO(0, 0, 0, 0.14),
  ),
  BoxShadow(
    offset: Offset(0, 3),
    blurRadius: 3,
    spreadRadius: -2,
    color: Color.fromRGBO(0, 0, 0, 0.12),
  ),
  BoxShadow(
    offset: Offset(0, 1),
    blurRadius: 8,
    spreadRadius: 0,
    color: Color.fromRGBO(0, 0, 0, 0.20),
  ),
];

/* offset-x | offset-y | blur-radius | spread-radius | color */

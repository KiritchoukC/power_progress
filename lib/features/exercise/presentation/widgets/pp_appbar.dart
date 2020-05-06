import 'package:flutter/material.dart';

class PPAppBar extends AppBar {
  final String titleLabel;
  PPAppBar({@required this.titleLabel})
      : super(
          title: Text(
            titleLabel,
            style: const TextStyle(color: Colors.black),
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
        );
}

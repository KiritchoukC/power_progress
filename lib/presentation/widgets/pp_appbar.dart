import 'package:flutter/material.dart';

class PPAppBar extends AppBar {
  PPAppBar({@required String titleLabel, List<Widget> actions})
      : super(
          title: Text(
            titleLabel,
            style: const TextStyle(color: Colors.black),
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: actions,
        );
}

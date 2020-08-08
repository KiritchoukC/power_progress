import 'package:flutter/material.dart';

class PPAppBar extends AppBar {
  PPAppBar({
    @required Widget title,
    List<Widget> actions,
    bool automaticallyImplyLeading = false,
  }) : super(
          title: title,
          automaticallyImplyLeading: automaticallyImplyLeading,
          elevation: 0,
          actions: actions,
        );
}

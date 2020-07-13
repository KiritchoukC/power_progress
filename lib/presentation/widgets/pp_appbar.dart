import 'package:flutter/material.dart';

class PPAppBar extends AppBar {
  PPAppBar({
    @required BuildContext context,
    @required String titleLabel,
    List<Widget> actions,
    bool automaticallyImplyLeading = false,
  }) : super(
          title: Text(
            titleLabel,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          automaticallyImplyLeading: automaticallyImplyLeading,
          elevation: 0,
          actions: actions,
        );
}

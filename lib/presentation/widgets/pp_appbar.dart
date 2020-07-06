import 'package:flutter/material.dart';

class PPAppBar extends AppBar {
  PPAppBar({@required BuildContext context, @required String titleLabel, List<Widget> actions})
      : super(
          title: Text(
            titleLabel,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: actions,
        );
}

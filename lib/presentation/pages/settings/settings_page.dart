import 'package:flutter/material.dart';

import 'package:power_progress/presentation/widgets/pp_appbar.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PPAppBar(
        context: context,
        titleLabel: 'Settings',
        automaticallyImplyLeading: true,
      ),
      body: Container(
        child: const Center(
          child: Text('Settings'),
        ),
      ),
    );
  }
}

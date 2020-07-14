import 'package:flutter/material.dart';

import 'package:power_progress/presentation/pages/settings/widgets/about_settings_card.dart';
import 'package:power_progress/presentation/pages/settings/widgets/dark_theme_settings_card.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                DarkThemeSettingsCard(),
                AboutSettingsCard(),
              ],
            ),
          ),
        ));
  }
}

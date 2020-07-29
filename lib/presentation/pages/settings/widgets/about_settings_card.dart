import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class AboutSettingsCard extends StatelessWidget {
  const AboutSettingsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.info_outline),
        title: const Text('About'),
        onTap: () async {
          final packageInfo = PackageInfo.fromPlatform();

          showAboutDialog(
            context: context,
            applicationVersion: (await packageInfo).version,
            applicationName: (await packageInfo).appName,
            applicationIcon: const Image(
              image: AssetImage('assets/launcher_logo.png'),
              height: 40,
            ),
          );
        },
      ),
    );
  }
}

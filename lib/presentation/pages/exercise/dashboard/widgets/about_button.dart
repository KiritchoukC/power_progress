import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.info,
        color: Colors.white,
      ),
      onPressed: () async {
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
    );
  }
}

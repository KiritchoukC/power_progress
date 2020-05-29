import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      elevation: 10,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
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
          ),
        ],
      ),
    );
  }
}

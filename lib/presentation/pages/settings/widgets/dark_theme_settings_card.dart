import 'package:flutter/material.dart';

class DarkThemeSettingsCard extends StatelessWidget {
  const DarkThemeSettingsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.style),
        title: const Text('Dark theme'),
        trailing: _Switch(),
      ),
    );
  }
}

class _Switch extends StatefulWidget {
  const _Switch({
    Key key,
  }) : super(key: key);

  @override
  __SwitchState createState() => __SwitchState();
}

class __SwitchState extends State<_Switch> {
  bool isEnabled;

  @override
  void initState() {
    isEnabled = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isEnabled,
      onChanged: (newValue) {
        setState(() {
          isEnabled = newValue;
        });
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class RealizationDialog extends StatefulWidget {
  final Function(int) onValidate;
  final int initialValue;

  const RealizationDialog({Key key, @required this.initialValue, @required this.onValidate})
      : super(key: key);

  @override
  _RealizationDialogState createState() => _RealizationDialogState();
}

class _RealizationDialogState extends State<RealizationDialog> {
  int _currentValue;

  void setCurrentValue(num value) {
    setState(() {
      _currentValue = value.toInt();
    });
  }

  @override
  void initState() {
    _currentValue = widget.initialValue;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('How many reps done ?'),
      content: NumberPicker.horizontal(
        initialValue: _currentValue,
        minValue: 0,
        maxValue: 100,
        onChanged: setCurrentValue,
      ),
      elevation: 4,
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        FlatButton(
          onPressed: () {
            widget.onValidate(_currentValue);
            Navigator.of(context).pop();
          },
          child: const Text('Done'),
        )
      ],
    );
  }
}

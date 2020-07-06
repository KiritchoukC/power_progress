import 'package:flutter/material.dart';

class RemoveButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RemoveButton({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      color: Theme.of(context).primaryColor,
      onPressed: onPressed,
    );
  }
}

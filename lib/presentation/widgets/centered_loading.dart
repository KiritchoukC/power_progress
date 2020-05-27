import 'package:flutter/material.dart';

class CenteredLoading extends StatelessWidget {
  final Color color;
  final Color backgroundColor;

  const CenteredLoading({
    Key key,
    this.backgroundColor,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: backgroundColor,
        valueColor: color == null ? null : AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}

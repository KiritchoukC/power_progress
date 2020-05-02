import 'package:flutter/material.dart';

class HSpacing extends SizedBox {
  static const _baseWidth = 5.0;
  const HSpacing.extraSmall() : super(width: _baseWidth);
  const HSpacing.small() : super(width: _baseWidth * 2);
  const HSpacing.medium() : super(width: _baseWidth * 4);
  const HSpacing.large() : super(width: _baseWidth * 12);
}

class VSpacing extends SizedBox {
  static const _baseHeight = 10.0;
  const VSpacing({@required double height}) : super(height: height);
  const VSpacing.extraSmall() : super(height: _baseHeight);
  const VSpacing.small() : super(height: _baseHeight * 2);
  const VSpacing.medium() : super(height: _baseHeight * 4);
  const VSpacing.large() : super(height: _baseHeight * 12);
}

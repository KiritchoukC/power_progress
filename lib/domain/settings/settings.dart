import 'package:flutter/foundation.dart';

class Settings {
  final bool isThemeDark;
  Settings({@required this.isThemeDark}) : assert(isThemeDark != null);
  Settings.init() : this(isThemeDark: false);
  Settings copyWith({bool isThemeDark}) {
    return Settings(isThemeDark: isThemeDark ?? this.isThemeDark);
  }
}

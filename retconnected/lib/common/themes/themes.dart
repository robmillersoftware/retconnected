import 'package:flutter/material.dart';

import 'default/default_theme.dart';

class RetConThemes {
  RetConThemes._privateConstructor();

  static final _defaultLight = getDefaultLightTheme();
  static final _defaultDark = getDefaultDarkTheme();

  static ThemeData get defaultLight => _defaultLight;
  static ThemeData get defaultDark => _defaultDark;
}

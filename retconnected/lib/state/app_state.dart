import 'package:flutter/material.dart';

import '../common/themes/themes.dart';
import 'actions/change_theme.dart';

class AppState {
  final ThemeData _currentTheme;

  ThemeData get theme => _currentTheme;

  AppState(this._currentTheme);

  AppState.initialState() : _currentTheme = RetConThemes.defaultLight;
}

AppState reducer(AppState prev, dynamic action) {
  if (action is ChangeThemeAction) {
    return AppState(action.newTheme);
  }

  throw Exception('Attempted to dispatch invalid action.');
}

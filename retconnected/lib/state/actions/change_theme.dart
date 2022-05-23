import 'package:flutter/material.dart';
import 'package:retconnected/state/actions/base_action.dart';

class ChangeThemeAction extends BaseAction {
  ThemeData newTheme;

  ChangeThemeAction(this.newTheme);
}

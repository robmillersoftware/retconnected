import 'change_theme.dart';

enum Actions {
  changeTheme(ChangeThemeAction);

  const Actions(this.constructor);
  final dynamic constructor;

  static Actions build(String type, dynamic data) {
    var value = Actions.values.byName(type);
    return value.constructor(data);
  }
}
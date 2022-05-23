import 'package:redux/redux.dart';
import 'package:retconnected/common/themes/themes.dart';
import 'package:retconnected/state/app_state.dart';

Store<AppState> _instance =
    Store<AppState>(reducer, initialState: AppState(RetConThemes.defaultLight));

Store<AppState> getMockStore() {
  return _instance;
}

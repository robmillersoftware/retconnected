import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:retconnected/service_locator.dart';
import 'package:retconnected/state/app_state.dart';
import 'nav_bar.dart';

void main() {
  setupServiceLocator();
  final Store<AppState> store = Store<AppState>(reducer,
      initialState: AppState.initialState(), middleware: [thunkMiddleware]);
  runApp(StoreProvider(store: store, child: RetConnected(store)));
}

class RetConnected extends StatelessWidget {
  final Store<AppState> store;
  // ignore: use_key_in_widget_constructors
  const RetConnected(this.store);

  static const String _title = 'RetConnected';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title, home: const NavBarWidget(), theme: store.state.theme);
  }
}

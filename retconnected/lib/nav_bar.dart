import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:retconnected/drawer.dart';
import 'package:retconnected/state/app_state.dart';

import 'screens/campaign/campaign.dart';
import 'screens/chat/chat.dart';
import 'screens/encounter/encounter.dart';
import 'screens/home/home.dart';
import 'screens/notes/notes.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  State<NavBarWidget> createState() => _NavBarWidget();
}

class _NavBarWidget extends State<NavBarWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Campaign(),
    Encounter(),
    Chat(),
    Notes()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return StoreConnector<AppState, _ViewModel>(
        converter: (store) => _ViewModel.fromStore(store),
        builder: (BuildContext context, _ViewModel vm) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('RetConnected'),
              ),
              body: Material(
                  child: Center(
                child: _widgetOptions.elementAt(_selectedIndex),
              )),
              drawer: const AppDrawer(),
              //Not sure why this has to be wrapped in a theme to get the background color to work
              bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(
                    canvasColor:
                        theme.bottomNavigationBarTheme.backgroundColor),
                child: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.assistant_photo_outlined),
                      label: 'Campaign',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.assignment_late_outlined),
                      label: 'Encounter',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.chat_outlined),
                      label: 'Chat',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.note_add_outlined),
                      label: 'Notes',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                ),
              ));
        });
  }
}

class _ViewModel {
  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel();
  }
}

import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  bool _darkTheme = false;
  bool _customTheme = false;

  ThemeData _currentTheme;

  ThemeChanger(int theme) {
    switch (theme) {
      case 1:
        _darkTheme = false;
        _customTheme = false;
        _currentTheme = ThemeData.light().copyWith(accentColor: Colors.pink);
        break;
      case 2:
        _darkTheme = true;
        _customTheme = false;
        _currentTheme = ThemeData.dark().copyWith(accentColor: Colors.pink);
        break;
      case 3:
        _darkTheme = false;
        _customTheme = true;
        break;
      default:
        _darkTheme = false;
        _customTheme = false;
        _currentTheme = ThemeData.light();
    }
  }

  bool get darkTheme => _darkTheme;
  bool get customTheme => _customTheme;
  ThemeData get currentTheme => _currentTheme;

  set darkTheme(bool value) {
    _customTheme = false;
    _darkTheme = value;

    if (value) {
      _currentTheme = ThemeData.dark().copyWith(accentColor: Colors.pink);
    } else {
      _currentTheme = ThemeData.light().copyWith(accentColor: Colors.pink);
    }

    notifyListeners();
  }

  set customTheme(bool value) {
    _customTheme = value;
    _darkTheme = false;

    if (value) {
      _currentTheme = ThemeData.dark().copyWith(
        accentColor: Color(0xff48A0EB),
        primaryColorLight: Colors.white,
        scaffoldBackgroundColor: Color(0xff16202B),
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
        // textTheme.bodyText2.color
      );
    } else {
      _currentTheme = ThemeData.light();
    }

    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class MyThemeModel extends ChangeNotifier {
  bool _isLihtTheme = true;

  void changeTheme() {
    _isLihtTheme = !_isLihtTheme;
    notifyListeners();
  }

  bool get isLightTheme => _isLihtTheme;
}

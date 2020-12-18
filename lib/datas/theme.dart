import 'package:flutter/material.dart';

class MyTheme extends ChangeNotifier{
  MaterialColor primarySwatch = Colors.pink;

  void changeThemeColor(MaterialColor materialColor) {
    primarySwatch = materialColor;
    notifyListeners();
  }
}
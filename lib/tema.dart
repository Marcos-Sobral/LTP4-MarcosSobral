import 'package:flutter/cupertino.dart';

class Tema extends ChangeNotifier{
  static Tema intance = Tema(); 
  bool isThemeDark = false;
  changeTheme(){
    isThemeDark = isThemeDark;
    notifyListeners();
  }
}
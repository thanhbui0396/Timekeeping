import 'package:flutter/material.dart';

class CheckLogin extends ChangeNotifier {
  bool isLogin = false;

  void checkLogin() {
    isLogin = true;
    notifyListeners();
  }

  void checkLogOut() {
    isLogin = false;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String _username = "volkan";

  String getUsername()=> _username;
  
  void changeUsername(String newUsername) {
    _username = newUsername;
    notifyListeners();
  }
}

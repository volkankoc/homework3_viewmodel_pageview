

import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier{
  int _currentIndex = 0;

  int getCurrentIndex()=> _currentIndex;

  void changePage(int value){
    _currentIndex = value;
    notifyListeners();
  }
}
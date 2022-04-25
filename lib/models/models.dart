import 'package:flutter/material.dart';

class BottomButtonModel extends ChangeNotifier{
  int _number = 0;

  int get number => _number;
  set number(int number){
    _number = number;
    notifyListeners();
  }
}
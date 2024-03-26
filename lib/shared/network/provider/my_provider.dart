import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  String language="en";
  changeLanguage(String code){
    language=code;
    notifyListeners();

  }
}
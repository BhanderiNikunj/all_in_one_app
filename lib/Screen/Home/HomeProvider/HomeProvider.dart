import 'package:all_in_one_app/Screen/App/View/AddApp.dart';
import 'package:all_in_one_app/Screen/Game/View/AddGame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomeProvider extends ChangeNotifier{
  InAppWebViewController? webViewController;
  int i=0;

  List Screens = [
    AddGame(),
    AddApp(),
  ];

  void ChangeScreen(int value){
    i = value;
    notifyListeners();
  }
}
import 'package:flutter/material.dart';
import 'package:play_store/IOS_Screen/App/View/AppScreenIOS.dart';
import 'package:play_store/IOS_Screen/GameScreen/View/GameScreenIOS.dart';

class HomeProviderIOS extends ChangeNotifier{

  List Screens = [
    GameScreenIOS(),
    GameScreenIOS(),
    AppScreenIOS(),
  ];
}
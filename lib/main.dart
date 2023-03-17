import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store/Android_Screen/Apps/Provider/AppProvider.dart';
import 'package:play_store/Android_Screen/Game/Provider/GameProvider.dart';
import 'package:play_store/Android_Screen/Game/View/GameScreen.dart';
import 'package:play_store/Android_Screen/Home/Provider/HomeProvider.dart';
import 'package:play_store/Android_Screen/Home/View/HomePage.dart';
import 'package:play_store/Android_Screen/Installing/Provider/InstallPageProvider.dart';
import 'package:play_store/Android_Screen/Installing/View/InstallingPage.dart';
import 'package:play_store/IOS_Screen/App/Provider/AppProviderIOS.dart';
import 'package:play_store/IOS_Screen/GameScreen/Provider/GameProviderIOS.dart';
import 'package:play_store/IOS_Screen/GameScreen/View/GameScreenIOS.dart';
import 'package:play_store/IOS_Screen/Home/Provider/HomeScreenIOS.dart';
import 'package:play_store/IOS_Screen/Home/View/HomeScreenIOS.dart';
import 'dart:io';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GameProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => InstallProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GameProviderIOS(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProviderIOS(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProviderIOS(),
        ),
      ],
      child: Platform.isAndroid ? IOS() : Android(),
    ),
  );
}

Widget Android() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomeScreen(),
      'game': (context) => GameScreen(),
      'app': (context) => GameScreen(),
      'install': (context) => InstallingPage(),
    },
  );
}

Widget IOS() {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (p0) => HomeScreenIOS(),
      'game screen': (p0) => GameScreenIOS(),
    },
  );
}

import 'package:flutter/material.dart';
import 'package:play_store/Screen/Apps/Provider/AppProvider.dart';
import 'package:play_store/Screen/Game/Provider/GameProvider.dart';
import 'package:play_store/Screen/Game/View/GameScreen.dart';
import 'package:play_store/Screen/Home/Provider/HomeProvider.dart';
import 'package:play_store/Screen/Home/View/HomePage.dart';
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'game':(context) => GameScreen(),
          'app':(context) => GameScreen(),
        },
      ),
    ),
  );
}

import 'package:all_in_one_app/Screen/App/Provider/AppProvider.dart';
import 'package:all_in_one_app/Screen/App/View/AddApp.dart';
import 'package:all_in_one_app/Screen/App/View/AppScreen.dart';
import 'package:all_in_one_app/Screen/Game/Provider/GameProvider.dart';
import 'package:all_in_one_app/Screen/Game/View/AddGame.dart';
import 'package:all_in_one_app/Screen/Game/View/GameScreen.dart';
import 'package:all_in_one_app/Screen/Home/HomeProvider/HomeProvider.dart';
import 'package:all_in_one_app/Screen/Home/View/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GameProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'game add': (context) => AddGame(),
          'app add': (context) => AddApp(),
          'game': (context) => GameScreen(),
          'app': (context) => AppScreen(),
        },
      ),
    ),
  );
}

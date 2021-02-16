import 'package:flutter/material.dart';
import 'package:standup/screens/animation_screen.dart';
import 'package:standup/screens/home_screen.dart';
import 'package:standup/screens/test_main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: TestMainScreen(),]
      routes: {
        '/' : (ctx) => TestMainScreen(),
        "/animation" : (ctx) => AnimationScreen(),
      },
    );
  }
}






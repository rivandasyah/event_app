import 'package:event_app/view/detail.dart';
import 'package:event_app/view/home.dart';
import 'package:event_app/view/setup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event App',
      initialRoute: SetupScreen.page,
      routes: {
        HomeScreen.page: (context) => HomeScreen(),
        SetupScreen.page: (context) => SetupScreen()
      },
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   body: DetailScreen(),
      // ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:islamiproject/HomeScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islami',
      routes: {
        HomeScreen.routeName :(BuildContext)=>HomeScreen()
      },
    );
  }
}


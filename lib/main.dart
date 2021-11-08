import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamiproject/Home/HomeScreen.dart';
import 'package:islamiproject/Home/Quran/SuraDetailsScreen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islami',
      theme: MyThemeData.lightTheme,
      //darkTheme: MyThemeData.darkTheme,
      routes: {
        HomeScreen.routeName :(BuildContext)=>HomeScreen(),
        SuraDetailsScreen.routeName :(BuildContext)=> SuraDetailsScreen(),
      },
     initialRoute: HomeScreen.routeName,
    );
  }
}


class MyThemeData{
  static const Color primaryColor = Color.fromARGB(255, 183, 147, 95);
  static const Color primaryColorDark = Color.fromARGB(255, 20, 26, 46);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: MyThemeData.primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    primaryColor: MyThemeData.primaryColorDark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
  );
}


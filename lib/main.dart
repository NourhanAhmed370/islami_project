import 'package:flutter/material.dart';
import 'package:untitled2/hadeth_details/hadeth_details.dart';
import 'package:untitled2/my_theme_data.dart';
import 'package:untitled2/splash_screen/splash.dart';
import 'package:untitled2/sura_details/sura_details.dart';

import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: SplashScreen.routeName,
        routes: {
          HomeScreen.routeName: (buildContext) => HomeScreen(),
          SplashScreen.routeName: (buildContext) => SplashScreen(),
          SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen(),
          HadethDetailsScreen.routeName:(buildContext)=> HadethDetailsScreen(),
        },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
    );
  }
}

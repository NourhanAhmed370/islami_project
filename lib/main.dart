import 'package:flutter/material.dart';
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
          SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen()
        },
      theme: ThemeData(
          progressIndicatorTheme:
          ProgressIndicatorThemeData(color: Color(0xFFB7935F)),
          cardColor: Colors.white,
          primaryColor: Color(0xFFB7935F),
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
              color: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(color: Color(0xFF242424), fontSize: 30),
              iconTheme: IconThemeData(color: Colors.black)),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
          )),
    );
  }
}

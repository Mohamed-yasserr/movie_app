import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_screen.dart';

import 'Styles/themes.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        HomeScreen.routeName: (_)=> HomeScreen(),
        SplashScreen.routeName: (_)=> SplashScreen(),
      } ,
      initialRoute:SplashScreen.routeName,
      theme:MyTheme.lightTheme ,
      themeMode:ThemeMode.light ,

    );
  }
}



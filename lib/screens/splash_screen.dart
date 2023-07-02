import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_screen.dart';

import '../Styles/themes.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName='SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: MyTheme.primaryColor,
      child: Stack(
        alignment: Alignment.center,
        children: [

          Image.asset("assets/images/movies.png",),

        ],
      ),
    );
  }
}

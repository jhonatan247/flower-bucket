import 'dart:async';
import 'package:flower_bucket/Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flower_bucket/Assets/images.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "splash";
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);}

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(),
    );
  }
}

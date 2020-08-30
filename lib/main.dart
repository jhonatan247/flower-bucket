import 'package:flower_bucket/Screens/bibliography.dart';
import 'package:flower_bucket/Screens/home.dart';
import 'package:flower_bucket/Screens/specie_view.dart';
import 'package:flower_bucket/Screens/splash.dart';
import 'package:flower_bucket/Utilities/Theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    SplashScreen.routeName: (context) => SplashScreen(),
    HomeScreen.routeName: (context) => HomeScreen(),
    SpecieViewScreen.routeName: (context) => SpecieViewScreen(),
    BibliographyScreen.routeName: (context) => BibliographyScreen(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flowew Bucket',
      theme: DCXTheme.dcxTheme,
      home: SplashScreen(),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

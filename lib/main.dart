import 'package:flutter/material.dart';
import 'package:task3/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splash_Animated());
  }
}

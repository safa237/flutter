import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:task3/main.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'notepad.dart';

class Splash_Animated extends StatelessWidget {
  const Splash_Animated({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 500,
        backgroundColor: Colors.white,
        pageTransitionType: PageTransitionType.topToBottom,
        splashTransition: SplashTransition.rotationTransition,
        splash:  Image.asset('images/notes.png',),

        nextScreen:  Notepad(),
        animationDuration: const Duration(seconds: 0));

  }
}
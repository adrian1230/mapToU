import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:map2U/src/pages/explore/explore.dart';
import 'package:page_transition/page_transition.dart';

class ESplash extends StatelessWidget {
  static String routeName = "splash";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash',
      home: AnimatedSplashScreen(
        splash: "assets/images/hjk.png", 
        nextScreen: Explore(product: null),
        duration: 5000,
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Colors.black,
        pageTransitionType: PageTransitionType.fade,
      ),
    );
  }
}


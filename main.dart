import 'package:flutter/material.dart';
import 'package:map2U/src/pages/splash/easy_splash.dart';
import 'package:map2U/src/pages/splash/splash.dart';
import 'package:map2U/src/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterMap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Splash.routeName,
      routes: routes
    );
  }
}

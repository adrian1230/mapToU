import 'package:flutter/material.dart';
import 'package:map2U/src/pages/explore/explore.dart';
import 'package:map2U/src/pages/map/map.dart';

class Splash extends StatefulWidget {
  static String routeName = "splash";
  Splash({Key key}) : super(key: key);
  @override
  _Splash createState() => _Splash();
}

class _Splash extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (_) =>
                  // Explore(product: null)
                  GMap()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:map2U/src/pages/splash/easy_splash.dart';
import 'package:map2U/src/pages/splash/splash.dart';
import 'package:map2U/src/pages/explore/explore.dart';
import 'package:map2U/src/pages/detail/detail.dart';
import 'package:map2U/src/pages/map/map.dart';

final Map<String, WidgetBuilder> routes = {
  ESplash.routeName: (context) => ESplash(),
  Splash.routeName: (context) => Splash(),
  Explore.routeName: (context) => Explore(product: null),
  Detail.routeName: (context) => Detail(product: null),
  GMap.routeName: (context) => GMap(),
};

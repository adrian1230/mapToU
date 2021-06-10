import 'package:flutter/material.dart';
import 'package:map2U/src/pages/explore/explore.dart';
import 'package:map2U/src/pages/splash/splash.dart';
import 'package:map2U/src/widgets/cusRoute.dart';
import 'package:map2U/src/data/productModel.dart';

// class Routes {
//   final ProductModel product;
//   const Routes({Key key, @required this.product}) : super(key: key);
//   Map<String, WidgetBuilder> getRoute() {
//     return <String, WidgetBuilder> {
//       '/': (_) => Splash(),
//       '/Explore': (_) => Explore(product: product)
//     };
//   }
//   static Route onGenerateRoute(RouteSettings settings) {
//     final List<String> pathElements = settings.name.split('/');
//     if (pathElements[0]!=''||pathElements.length==1) {
//       return null;
//     }
//     switch (pathElements[1]) {
//       case "Explore":
//         return CusRoute<bool>(
//           builder: (BuildContext context) => null
//         );
//     }
//     return null;
//   }
// }


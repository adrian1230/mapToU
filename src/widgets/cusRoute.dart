import 'package:flutter/material.dart';

class CusRoute<T> extends MaterialPageRoute<T> {
  CusRoute({WidgetBuilder builder, RouteSettings settings})
    :super(builder: builder,settings:settings);
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.name == "Splash") {
      return child;
    }
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
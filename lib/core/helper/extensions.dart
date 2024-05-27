import 'package:flutter/material.dart';

extension Navigation on BuildContext {

  Future<dynamic> pushNamedRoute(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushAndRemoveUtils(Widget newRoute) {
    return Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => newRoute), (route) => false);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  void pop() {
    return Navigator.of(this).pop();
  }

}

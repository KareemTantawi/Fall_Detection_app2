// ignore_for_file: camel_case_extensions

import 'package:flutter/material.dart';

extension context on BuildContext {
  //! Color
  Color get color => Theme.of(this).primaryColor;
  Color get colorAccent => Theme.of(this).colorScheme.secondary;
  //! Size
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;

  //! Navigation
  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushAndRemoveUntil(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}

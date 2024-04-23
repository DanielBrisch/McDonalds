import 'package:delivery/screens/first_page.dart';
import 'package:delivery/screens/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String home = '/home';
  static const String first = '/first';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeApp());
      case Routes.first:
        return MaterialPageRoute(builder: (_) => FirstPage());
      default:
        return MaterialPageRoute(builder: (_) => HomeApp());
    }
  }
}

import 'package:delivery/screens/first_page.dart';
import 'package:delivery/screens/home_page.dart';
import 'package:flutter/material.dart';

import '../screens/itemSelect_page.dart';

class Routes {
  static const String home = '/home';
  static const String first = '/first';
  static const String selected = '/selected';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeApp());
      case Routes.first:
        return MaterialPageRoute(builder: (_) => const FirstPage());
      case Routes.selected:
        return MaterialPageRoute(builder: (_) => const SelectedItem());
      default:
        return MaterialPageRoute(builder: (_) => const HomeApp());
    }
  }
}

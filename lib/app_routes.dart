import 'package:delivery/ui/screens/car_shop_page.dart';
import 'package:delivery/ui/screens/home_page.dart';
import 'package:delivery/ui/screens/introduction_page.dart';
import 'package:delivery/ui/screens/item_select_page.dart';
import 'package:delivery/ui/screens/special_offer_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String home = '/home';
  static const String first = '/first';
  static const String selected = '/selected';
  static const String special = '/special';
  static const String car = '/car';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.first:
        return MaterialPageRoute(builder: (_) => const IntroductionPage());
      case Routes.selected:
        return MaterialPageRoute(builder: (_) => const ItemSelectPage());
      case Routes.special:
        return MaterialPageRoute(builder: (_) => const SpecialOfferPage());
      case Routes.car:
        return MaterialPageRoute(builder: (_) => const CarShopPage());
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}

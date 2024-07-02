import 'package:delivery_app/pages/homescreen.dart';
import 'package:delivery_app/pages/location.dart';
import 'package:delivery_app/pages/searchpage.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/homescreen':
        return MaterialPageRoute(builder: (context) => const HomeScreen());
        case '/location':
        return MaterialPageRoute(builder: (context) => const Location());
        case '/search':
        return MaterialPageRoute(builder: (context) => const SearchPage());
      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen(),
        );
    }
  }
}

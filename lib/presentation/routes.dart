import 'package:delivery_app/presentation/pages/homescreen.dart';
import 'package:delivery_app/presentation/pages/locationpage.dart';
import 'package:delivery_app/presentation/pages/searchpage.dart';
import 'package:delivery_app/presentation/pages/seeallpage.dart';
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
      case '/seeall':
        return MaterialPageRoute(builder: (context) => const SeeAll());
      default:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
  }
}

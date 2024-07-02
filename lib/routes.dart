import 'package:delivery_app/pages/categories.dart';
import 'package:delivery_app/pages/italian.dart';
import 'package:delivery_app/pages/mainscreen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/Category':
        return MaterialPageRoute(builder: (context) => const CategoriesScreen());
        case '/Italian':
        return MaterialPageRoute(builder: (context) => const Italian());
      default:
        return MaterialPageRoute(builder: (context) => const MainScreen(),
        );
    }
  }
}

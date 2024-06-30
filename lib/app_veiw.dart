import 'package:delivery_app/pages/categories.dart';
import 'package:delivery_app/pages/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyAppView extends StatefulWidget {
  const MyAppView({super.key});

  @override
  State<MyAppView> createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense Tracker",
      theme: ThemeData(
          colorScheme: ColorScheme.light(
        surface: Colors.grey.shade100,
        onSurface: Colors.black,
        primary: Color(0xFFA8DADC),
        secondary: Color(0xFFF1FAEE),
        tertiary: Color(0xFFE63946),
        outline: Colors.grey.shade400,
      ),
      ),
      home: const CategoriesScreen()
    );
  }
}

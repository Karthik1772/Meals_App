import 'package:delivery_app/pages/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense Tracker",
      theme: ThemeData(
          colorScheme: ColorScheme.light(
        surface: Colors.grey.shade100,
        onSurface: Colors.black,
        primary: const Color(0x005F73),
        secondary: const Color(0x0A9396),
        tertiary: const Color(0x94d2bd),
        outline: Colors.grey.shade400,
      ),
      textTheme:GoogleFonts.latoTextTheme(),
      ),
      home: const MainScreen(),
    );
  }
}

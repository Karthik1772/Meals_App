import 'package:delivery_app/pages/models/widgetmeal.dart';
import 'package:flutter/material.dart ';
class Italian extends StatefulWidget {
  const Italian({super.key});

  @override
  State<Italian> createState() => _ItalianState();
}

class _ItalianState extends State<Italian> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Widgetmeal(),
          ),
        ),
      ),
    );
  }
}
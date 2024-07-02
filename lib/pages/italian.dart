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
            child: Widgetmeal(
                name: "Chicken Scarpariello",
                price: "318",
                image:
                    "https://www.foodandwine.com/thmb/fPWGVzDqrWkN2iaekOQc3jOVnhc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Chicken-Scarpariello-FT-RECIPE1023-c6c5d4c72b1f4c66bd8276106447c988.jpg"),
          ),
        ),
      ),
    );
  }
}

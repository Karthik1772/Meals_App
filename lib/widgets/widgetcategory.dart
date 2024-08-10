import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category extends StatefulWidget {
  final String image;
  final String title;
  final VoidCallback onPressed;
  const Category(
      {super.key,
      required this.title,
      required this.image,
      required this.onPressed});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: widget.onPressed,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(widget.image)),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
          Text(widget.title),
        ],
      ),
    );
  }
}

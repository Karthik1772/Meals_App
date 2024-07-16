import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onPressed;

  CustomListTile({
    required this.icon,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 30, // Adjust the height here
        alignment: Alignment.centerLeft, // Align content to the center-left
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.yellow.shade700,
            ),
            SizedBox(width: 16), // Add spacing between icon and text
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

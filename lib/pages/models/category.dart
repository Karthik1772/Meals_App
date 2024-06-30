import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Cateogry extends StatefulWidget {
  final String id;
  final String title;
  final Color color;
  const Cateogry({super.key, required this.id,required this.title, this.color = Colors.orange});

  @override
  State<Cateogry> createState() => _CateogryState();
}

class _CateogryState extends State<Cateogry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.title,
          style: GoogleFonts.varelaRound(
              color: Theme.of(context).colorScheme.surface,fontSize: 20),
        ),
      ),
    );
  }
}

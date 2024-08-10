import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Manage Address",
          style: TextStyle(fontSize: 25),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, '/homepage'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Column(
          //main column start
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 240,
                height: 30,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 255, 213, 0)),
                    ),
                    child: Text(
                      "+ Add New Address",
                      style: GoogleFonts.varelaRound(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ), //main column end
    ));
  }
}

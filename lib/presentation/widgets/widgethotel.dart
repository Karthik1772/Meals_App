import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hotel extends StatefulWidget {
  final String image;
  final String hname;
  final String category;
  final String loc;
  final String open;
  final String close;
  const Hotel(
      {super.key,
      required this.image,
      required this.hname,
      required this.category,
      required this.loc,
      required this.open,
      required this.close});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Container(
          height: 300,
          width: double.infinity,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            surfaceTintColor: Colors.transparent,
            elevation: 10,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 175,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          widget.image,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                ),
                Container(
                  width: double.infinity,
                  height: 115,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              widget.hname,
                              style: GoogleFonts.varelaRound(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              widget.category,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(widget.loc,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black))),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("open:",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.green))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(widget.open + "AM",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black))),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("close:",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.red))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(widget.close + "PM",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black))),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

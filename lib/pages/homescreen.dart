import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          //main column
          children: [
            Row(
              //1st row start
              children: [
                Column(
                  //sub column 1 start
                  children: [
                    Row(
                      //sub row1 start
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 30,
                        ),
                        GestureDetector(
                          child: Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          onTap: () =>
                              Navigator.pushNamed(context, '/location'),
                        )
                      ],
                    ), //sub row1 ends
                    Text(
                      "Location",
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 15),
                    )
                  ],
                ), //sub column 1 ends
                //drawer should come
              ],
            ), //1st row ends
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  //sub row 2 starts
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Search for Stores,Items & More",
                        style: TextStyle(fontSize: 20),
                      ),
                      onTap: () => Navigator.pushNamed(context, '/search'),
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ],
                ), //sub row 2 ends
              ),
            ),
            Container(
              //filter
              margin: EdgeInsets.all(10),
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
            ),
            Container(
              //vertical scroll
              margin: EdgeInsets.all(10),
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Row(
              //2nd row starts
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: GoogleFonts.varelaRound(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: GoogleFonts.varelaRound(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ))
              ],
            ), //2nd row ends
          ],
        ), //main column ends
      ),
    );
  }
}

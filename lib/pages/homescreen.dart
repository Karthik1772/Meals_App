import 'package:delivery_app/pages/models/widgetcategory.dart';
import 'package:delivery_app/pages/models/widgethotel.dart';
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
          body: SingleChildScrollView(
            child: Column(
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
                Row(
                  //3rd row starts
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Category(
                      title: "Food",
                      image:
                          "https://clipart-library.com/images_k/junk-food-transparent/junk-food-transparent-8.png",
                      onPressed: () => Navigator.pushNamed(context, '/location'),
                    ),
                    Category(
                        title: "Cake",
                        image:
                            "https://static.vecteezy.com/system/resources/previews/025/868/851/original/simple-birthday-cake-illustration-isolated-on-white-background-birthday-cake-cartoon-vector.jpg",
                        onPressed: () => Navigator.pushNamed(context, '/location')),
                    Category(
                      title: "Ice Creams",
                      image:
                          "https://media.istockphoto.com/id/1205808069/vector/vector-illustration-of-ice-cream-isolated-on-white-background-for-kids-coloring-activity.jpg?s=612x612&w=0&k=20&c=5Eyah11U3sTviTTmnJvygfAj7WrBFcZdjqsFZak2k9Y=",
                      onPressed: () => Navigator.pushNamed(context, '/location'),
                    ),
                    Category(
                      title: "Cool Drinks & ..",
                      image:
                          "https://cdn1.iconfinder.com/data/icons/supermarket-cartoon/512/g10031-512.png",
                      onPressed: () => Navigator.pushNamed(context, '/location'),
                    ),
                  ],
                ), //3rd row starts
                Row(
                  //4th row starts
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Category(
                      title: "Groceries",
                      image:
                          "https://cdn4.vectorstock.com/i/1000x1000/36/23/supermarket-grocery-products-cartoon-vector-22713623.jpg",
                      onPressed: () => Navigator.pushNamed(context, '/location'),
                    ),
                    Category(
                        title: "Fruits & Veget..",
                        image:
                            "https://t3.ftcdn.net/jpg/02/31/10/18/360_F_231101808_OnTlS3i7jrxK4xm8afrKr1D7Kdi93SAH.jpg",
                        onPressed: () => Navigator.pushNamed(context, '/location')),
                    Category(
                      title: "Meat & Egg",
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDkF0HxPSvPqU6y3QO-7PsFL6Nx8LvhN_fhA&s",
                      onPressed: () => Navigator.pushNamed(context, '/location'),
                    ),
                    Category(
                      title: "Beauty & Well",
                      image:
                          "https://media.istockphoto.com/id/1186928348/vector/watercolor-vector-spa-concept-of-cosmetic-products.jpg?s=612x612&w=0&k=20&c=N_JE0WRbYkPdfIeXe-jN2isgenqBhV0k5yDbFcBULdI=",
                      onPressed: () => Navigator.pushNamed(context, '/location'),
                    ),
                  ],
                ), //4th row ends
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Stores Around Me",
                      style: GoogleFonts.varelaRound(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Hotel(image: "https://thumbs.dreamstime.com/b/delicious-karnataka-style-donne-biryani-serving-255733142.jpg",hname: "Royal Donne Biriyani",category: "Food",loc: "Moodbidre",open: "10.30AM",close: "10.30PM",),
              ],
            ),
          ), //main column ends
        ),
    );
  }
}

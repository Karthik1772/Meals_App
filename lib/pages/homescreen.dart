import 'package:delivery_app/models/categorylist.dart';
import 'package:delivery_app/models/hotel_list.dart';
import 'package:delivery_app/widgets/widgetlistview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(
            Icons.location_on,
            size: 30,
          ),
          title: Container(
            child: Column(
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
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 15),
                        )
                      ],
                    ), //sub column 1 ends
                    //drawer should come
                  ],
                ), //1st row ends
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.menu,
                size: 35,
              ),
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            //main column
            children: [
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
                width: 375,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 375,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://eatanceapp.com//wp-content/uploads/2021/12/restaurant-promotion-ideas.jpg")),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 200,
                        width: 375,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://www.gloriafood.com/wp-content/uploads/2018/09/unique-restaurant-promotion-ideas.png")),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 200,
                        width: 375,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: NetworkImage(
                                  "https://brennan-group.com/cdn/shop/articles/LTO_Blog.jpg?v=1596716376",
                                )),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Row(
                  //2nd row starts
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: GoogleFonts.varelaRound(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, "/seeall"),
                        child: Text(
                          "See All",
                          style: GoogleFonts.varelaRound(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ), //2nd row ends
              Clist(),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Stores Around Me",
                      style: GoogleFonts.varelaRound(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              HotelList(),
            ],
          ),
        ), //main column ends
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 80,
                child: DrawerHeader(child: Text("data")),
              ),
              CustomListTile(icon: Icons.wallet, title: 'Wallet'),
              const Divider(
                color: Colors.grey,
              ),
              CustomListTile(
                icon: Icons.location_on,
                title: 'Manage address',
                // onPressed: () => Navigator.pushNamed(context, '/location'),
              ),
              const Divider(
                color: Colors.grey,
              ),
              CustomListTile(
                icon: Icons.info,
                title: 'About Homza Cart',
              ),
              const Divider(
                color: Colors.grey,
              ),
              CustomListTile(icon: Icons.favorite, title: 'Favourites'),
              const Divider(
                color: Colors.grey,
              ),
              CustomListTile(
                icon: CupertinoIcons.gift_fill,
                title: 'Refer and Earn',
              ),
              const Divider(
                color: Colors.grey,
              ),
              CustomListTile(
                  icon: Icons.handshake_rounded, title: 'Help - FAQ'),
              const Divider(
                color: Colors.grey,
              ),
              CustomListTile(
                icon: Icons.contact_emergency,
                title: 'Terms of Service',
              ),
              const Divider(
                color: Colors.grey,
              ),
              CustomListTile(icon: Icons.shield, title: 'Privacy Policy'),
              const Divider(
                color: Colors.grey,
              ),
              CustomListTile(
                icon: Icons.content_paste,
                title: 'Refund Policy',
              ),
              const Divider(
                color: Colors.grey,
              ),
              CustomListTile(icon: CupertinoIcons.power, title: 'Log Out'),
              const Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

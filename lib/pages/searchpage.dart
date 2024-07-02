import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Search',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, '/homepage'),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,border: Border.all(color: Colors.grey.shade400),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
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
            )
          ],
        ),
      ),
    );
  }
}

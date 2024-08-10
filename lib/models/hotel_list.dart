import 'package:delivery_app/pages/models/widgethotel.dart';
import 'package:flutter/material.dart';

class HotelList extends StatefulWidget {
  const HotelList({super.key});

  @override
  State<HotelList> createState() => _HotelListState();
}

class _HotelListState extends State<HotelList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hotel(
            image:
                "https://woodlandhillsmagazine.com/wp-content/uploads/2023/02/burger-and-soda.jpg",
            hname: "Mehran Restaurant",
            category: "Food",
            loc: "Moodbidre",
            open: "11:30AM",
            close: "10:30PM"),
        Hotel(
            image:
                "https://b.zmtcdn.com/data/pictures/chains/5/18657255/0cbaa8a31809d47072aadefbeb97d5f3_o2_featured_v2.jpg",
            hname: "Hotel Sri Sagar",
            category: "Food",
            loc: "Moodbidri",
            open: "07:00AM",
            close: "09:15PM"),
        Hotel(
          image:
              "https://b.zmtcdn.com/data/reviews_photos/e7d/7c6e153321162cf8cb93e03bc3cf3e7d_1605586100.jpg",
          hname: "Royal Donne Biriyani",
          category: "Food",
          loc: "Moodbidre",
          open: "10:30AM",
          close: "10:30PM",
        ),
        Hotel(
          image:
              "https://static.vecteezy.com/system/resources/thumbnails/029/865/638/small_2x/of-biryani-as-a-dish-in-a-high-end-restaurant-generative-ai-photo.jpg",
          hname: "Arabian Treat Restaurant",
          category: "Food",
          loc: "Moodbidre",
          open: "11:00AM",
          close: "10:30PM",
        ),
        Hotel(
            image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEF5cCfRrVfi2vabG-HgxJOG4CYsyLWj6GmA&s",
            hname: "Grove Cafe",
            category: "Food",
            loc: "Moodbidre",
            open: "11:00",
            close: "10:00"),
        Hotel(
            image:
                "https://themeghalayan.com/wp-content/uploads/2022/06/WhatsApp-Image-2022-06-09-at-6.00.29-PM-974x553.jpeg",
            hname: "Charcoal's Restaurant",
            category: "Food",
            loc: "Moodbidre",
            open: "11:00AM",
            close: "10:30PM"),
        Hotel(
            image:
                "https://thumbs.dreamstime.com/b/convenient-set-fast-food-burger-french-fries-glass-cold-coke-convenient-set-fast-food-burger-271980411.jpg",
            hname: "Laziz Pizza",
            category: "Food",
            loc: "Moodbidre",
            open: "10:30",
            close: "10:00"),
      ],
    );
  }
}

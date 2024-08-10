import 'package:delivery_app/pages/models/widgetcategory.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAll extends StatefulWidget {
  const SeeAll({super.key});

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Categories",
              style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            Row(
              //1st row starts
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              ],
            ), //1st row ends
            Row(
              //2nd row starts
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Category(
                  title: "Cool Drinks & ..",
                  image:
                      "https://cdn1.iconfinder.com/data/icons/supermarket-cartoon/512/g10031-512.png",
                  onPressed: () => Navigator.pushNamed(context, '/location'),
                ),
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
              ],
            ), //2nd row ends
            Row(//3rd row starts
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
            )
          ],
        ));
  }
}

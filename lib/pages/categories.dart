import 'package:delivery_app/pages/models/widgetcategory.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text("Pick your Category"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            children: [
              Cateogry(
                  id: "c1",
                  title: 'Italian',
                  color: Colors.deepPurple.shade600,
                  onTap: () {
                    Navigator.pushNamed(context, '/Italian');
                  }),
              Cateogry(
                id: "c2",
                title: 'Quick & Easy',
                color: Colors.red.shade600,
              ),
              Cateogry(
                id: "c3",
                title: 'Hamburgers',
                color: Colors.orange.shade600,
              ),
              Cateogry(
                id: "c4",
                title: 'German',
                color: Colors.orange.shade400,
              ),
              Cateogry(
                id: "c5",
                title: 'Light & Lovely',
                color: Colors.blue.shade700,
              ),
              Cateogry(
                id: "c6",
                title: 'Exotic',
                color: Colors.green.shade700,
              ),
              Cateogry(
                id: "c7",
                title: 'Breakfast',
                color: Colors.blue.shade400,
              ),
              Cateogry(
                id: "c8",
                title: 'Asian',
                color: Colors.lightGreen.shade700,
              ),
              Cateogry(
                id: "c9",
                title: 'French',
                color: Colors.pink.shade500,
              ),
              Cateogry(
                id: "c10",
                title: 'Summer',
                color: Colors.teal.shade800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

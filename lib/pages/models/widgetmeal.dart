import 'package:flutter/material.dart';

class Widgetmeal extends StatefulWidget {
  const Widgetmeal({super.key});

  @override
  State<Widgetmeal> createState() => _WidgetmealState();
}

class _WidgetmealState extends State<Widgetmeal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.green)),
                    child: Center(
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Text("Chicken"),
                  Text("\$138"),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            side: BorderSide(color: Colors.yellow),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )),
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.white,
                          )),
                      child: Text("ADD",
                          style: TextStyle(
                            color: Colors.yellow,
                          )))
                ],
              ),
              Container(
                width: 150,
                height: 150,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                // child: Image.asset(name),
              )
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Widgetmeal extends StatefulWidget {
  final String name;
  final String price;
  final VoidCallback? onPressed;
  final String image;
  const Widgetmeal(
      {super.key,
      required this.name,
      required this.price,
      this.onPressed,
      required this.image});

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
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                width: 175,
                height: 150,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green)),
                        child: Center(
                          child: Container(
                            height: 7.5,
                            width: 7.5,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.topLeft, child: Text(widget.name)),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("\₹" + widget.price)),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape:
                                  WidgetStatePropertyAll(RoundedRectangleBorder(
                                side: BorderSide(color: Colors.yellow),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              )),
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.white,
                              )),
                          child: Text("ADD",
                              style: TextStyle(
                                color: Colors.yellow,
                              ))),
                    )
                  ],
                ),
              ),
              Container(
                  width: 150,
                  height: 150,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.network(widget.image))
            ],
          ),
        ),
      ],
    );
  }
}

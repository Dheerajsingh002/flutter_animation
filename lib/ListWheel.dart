import 'package:flutter/material.dart';

class Listv extends StatefulWidget {
  const Listv({super.key});

  @override
  State<Listv> createState() => _ListvState();
}

class _ListvState extends State<Listv> {
  var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("ListWhellScrollView"),
        ),
        body: ListWheelScrollView(
            itemExtent: 100,
            children: arr
                .map((value) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.redAccent,
                        ),
                        child: Center(
                            child: Text(
                          "$value",
                          style: TextStyle(fontSize: 20, color: Colors.black38),
                        )),
                      ),
                    ))
                .toList()));
  }
}

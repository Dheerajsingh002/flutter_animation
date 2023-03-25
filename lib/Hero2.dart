import 'package:flutter/material.dart';

class Heross extends StatefulWidget {
  const Heross({super.key});

  @override
  State<Heross> createState() => _HerossState();
}

class _HerossState extends State<Heross> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: "background",
                child: Image.network(
                  "https://images.freeimages.com/images/previews/ac9/railway-hdr-1361893.jpg",
                  height: 400,
                  width: 400,
                ))
          ]),
    );
  }
}

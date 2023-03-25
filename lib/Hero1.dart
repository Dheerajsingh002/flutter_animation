import 'package:flutter/material.dart';
import 'package:flutter_animation/Hero2.dart';

class Heros extends StatefulWidget {
  const Heros({super.key});

  @override
  State<Heros> createState() => _HerosState();
}

class _HerosState extends State<Heros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HERO ANIMATION")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Heross()));
              },
              child: Hero(
                  tag: "background",
                  child: Image.network(
                    "https://images.freeimages.com/images/previews/ac9/railway-hdr-1361893.jpg",
                    height: 100,
                    width: 100,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

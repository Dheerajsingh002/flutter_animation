import 'package:flutter/material.dart';

class Clip extends StatefulWidget {
  const Clip({super.key});

  @override
  State<Clip> createState() => _ClipState();
}

class _ClipState extends State<Clip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ClipRRct Animation")),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(41),
            topRight: Radius.circular(20),
          ),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.redAccent,
            child: Image.network(
              "https://media.istockphoto.com/id/1321258498/photo/unknown-person-without-a-face-in-a-hood-shows-a-finger-gesture-meaning-towns-the-concept-of.jpg?s=612x612&w=0&k=20&c=L8IXMzaNzDfxDd1nynU1uMH1wmpbH_x4lEez6_TKh7E=",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

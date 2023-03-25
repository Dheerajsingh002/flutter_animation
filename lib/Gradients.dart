import 'package:flutter/material.dart';

class Gradientss extends StatefulWidget {
  const Gradientss({super.key});

  @override
  State<Gradientss> createState() => _GradientssState();
}

class _GradientssState extends State<Gradientss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        actions: [
          Icon(Icons.person),
          Icon(Icons.phone),
          Icon(Icons.camera),
          Padding(padding: EdgeInsets.all(10))
        ],
        title: Text(
          "Gradients Colors",
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xffff9a9e), Color(0xfffecfef)])),
      ),
    );
  }
}

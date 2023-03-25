import 'package:flutter/material.dart';

class AnimateOpo extends StatefulWidget {
  const AnimateOpo({super.key});

  @override
  State<AnimateOpo> createState() => _AnimateOpoState();
}

class _AnimateOpoState extends State<AnimateOpo> {
  var isopacity = 1.0;
  bool opa = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent, title: Text("Animate Opacity")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: isopacity,
              duration: Duration(seconds: 2),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.redAccent,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                onPressed: () {
                  setState(() {
                    if (opa) {
                      isopacity = 0.0;
                      opa = false;
                    } else {
                      isopacity = 1.0;
                      opa = true;
                    }
                  });
                },
                child: Text("Click to show Animation"))
          ],
        ),
      ),
    );
  }
}

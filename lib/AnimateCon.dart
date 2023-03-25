import 'dart:math';

import 'package:flutter/material.dart';

class AnimateCon extends StatefulWidget {
  const AnimateCon({super.key});

  @override
  State<AnimateCon> createState() => _AnimateConState();
}

class _AnimateConState extends State<AnimateCon> {
  var h = 200.0;
  var w = 300.0;
  bool flag = true;
  var c = Colors.redAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Animated Container"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedContainer(
            height: h,
            width: w,
            curve: Curves.bounceInOut,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: c,
            ),
            duration: Duration(seconds: 3),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.redAccent),
              onPressed: () {
                setState(() {
                  if (flag) {
                    h = 100;
                    w = 200;

                    flag = false;
                    c = Colors.blueAccent;
                  } else {
                    h = 200;
                    w = 300;
                    flag = true;
                    c = Colors.amberAccent;
                  }
                });
              },
              child: Text("Click to Snimate Container"))
        ]),
      ),
    );
  }
}

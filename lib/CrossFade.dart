import 'dart:async';

import 'package:flutter/material.dart';

class AnimateFade extends StatefulWidget {
  const AnimateFade({super.key});

  @override
  State<AnimateFade> createState() => _AnimateFadeState();
}

class _AnimateFadeState extends State<AnimateFade> {
  bool isFade = true;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 2), () {
  //     reload();
  //   });
  // }

  void reload() {
    setState(() {
      if (isFade) {
        isFade = false;
      } else {
        isFade = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("CROSS FADE ANIMATION")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                // sizeCurve: Curves.bounceInOut,
                firstCurve: Curves.bounceIn,
                secondCurve: Curves.bounceInOut,
                firstChild: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amberAccent),
                ),
                secondChild: Image.network(
                  "https://images.freeimages.com/images/previews/ac9/railway-hdr-1361893.jpg",
                  height: 400,
                  width: 400,
                ),
                crossFadeState: isFade
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 4)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    reload();
                  });
                },
                child: Text("Click to Fade Animation"))
          ],
        ),
      ),
    );
  }
}

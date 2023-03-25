import 'package:flutter/material.dart';

class Tweens extends StatefulWidget {
  const Tweens({super.key});

  @override
  State<Tweens> createState() => _Tweens();
}

class _Tweens extends State<Tweens> with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: 300.0, end: 90.0).animate(animationcontroller);
    animationcontroller.addListener(() {
      setState(() {});
    });
    animationcontroller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Tween Animatiion"),
      ),
      body: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          color: Colors.red,
        ),
      ),
    );
  }
}

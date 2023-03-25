import 'package:flutter/material.dart';

class Rippls extends StatefulWidget {
  const Rippls({super.key});

  @override
  State<Rippls> createState() => _RipplsState();
}

class _RipplsState extends State<Rippls> with SingleTickerProviderStateMixin {
  var list = [50.0, 100.0, 150.0, 200.0, 250.0];
  late Animation animation;
  late AnimationController animationcontroller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween(begin: 0.0, end: 1.0).animate(animationcontroller);
    animationcontroller.addListener(() {
      setState(() {});
    });
    animationcontroller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ripple Effect"),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Stack(alignment: Alignment.center, children: [
            buidm(list[0]),
            buidm(list[1]),
            buidm(list[2]),
            buidm(list[3]),
            buidm(list[4]),
          ]),
        ));
  }

  Widget buidm(r) {
    return Container(
      height: r * animation.value,
      width: r * animation.value,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red.withOpacity(1.0 - animation.value)),
    );
  }
}

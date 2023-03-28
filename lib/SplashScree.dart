import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animation/HomePage.dart';
import 'package:flutter_animation/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const KEYBOOL = "login";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    person();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: CircleAvatar(child: Icon(Icons.person))),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffffa6c0fe), Color(0xfffff68084)])),
      ),
    );
  }

  void person() async {
    var sharpref = await SharedPreferences.getInstance();
    var isLogin = sharpref.getBool(KEYBOOL);
    if (isLogin != null) {
      if (isLogin) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      }
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }
}

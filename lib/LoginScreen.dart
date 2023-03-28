import 'package:flutter/material.dart';
import 'package:flutter_animation/HomePage.dart';
import 'package:flutter_animation/SplashScree.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        backgroundColor: Colors.redAccent,
        actions: [
          Padding(padding: EdgeInsets.all(8.0)),
          Icon(Icons.person),
          Padding(padding: EdgeInsets.all(8.0)),
          Icon(Icons.phone),
          Padding(padding: EdgeInsets.all(8.0)),
          Icon(Icons.camera),
          Padding(padding: EdgeInsets.all(8.0)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: CircleAvatar(
                backgroundColor: Colors.redAccent, child: Icon(Icons.person)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          )),
          SizedBox(
            height: 20,
          ),
          TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.redAccent),
              onPressed: () async {
                var sharpref = await SharedPreferences.getInstance();
                var setvalue =
                    sharpref.setBool(SplashScreenState.KEYBOOL, true);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text("Clickd Me"))
        ]),
      ),
    );
  }
}

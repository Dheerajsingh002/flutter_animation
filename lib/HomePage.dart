import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Home Page"),
        actions: [
          Padding(padding: EdgeInsets.all(8.0)),
          Icon(Icons.call),
          Padding(padding: EdgeInsets.all(8.0)),
          Icon(Icons.home),
          Padding(padding: EdgeInsets.all(8.0)),
          Icon(Icons.home_mini),
          Padding(padding: EdgeInsets.all(8.0)),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffff43e97b), Color(0xffff38f9d7)])),
        child: Center(
          child: Text(
            "Home Screen",
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

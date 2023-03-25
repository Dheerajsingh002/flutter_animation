import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shareds extends StatefulWidget {
  const Shareds({super.key});

  @override
  State<Shareds> createState() => _SharedsState();
}

class _SharedsState extends State<Shareds> {
  var controller = TextEditingController();
  String KEYNAME = "name";
  String nameval = "No value Saved";
  @override
  Widget build(BuildContext context) {
    void initState() {
      super.initState();
      data();
    }

    return Scaffold(
      appBar: AppBar(title: Text("Shared Preferences")),
      body: Center(
        child: Container(
          height: 500,
          width: 400,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                onPressed: () async {
                  var name = controller.text.toString();
                  var pref = await SharedPreferences.getInstance();
                  pref.setString(KEYNAME, name);
                },
                child: Text(
                  "Click",
                  style: TextStyle(color: Colors.black),
                )),
            Text(nameval)
          ]),
        ),
      ),
    );
  }

  void data() async {
    var pref = await SharedPreferences.getInstance();
    var getname = pref.getString(KEYNAME);
    nameval = getname ?? "No value Saved";
    setState(() {});
  }
}

import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              "Tab view",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            bottom: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 30),
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    icon: Icon(Icons.camera),
                  ),
                  Tab(
                    icon: Text("chats"),
                  ),
                  Tab(icon: Text("status")),
                  Tab(icon: Text("calls"))
                ]),
          ),
          body: TabBarView(children: [
            Icon(Icons.camera),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.person),
                    title: Text("person ${index + 1}"),
                    subtitle: Text("I am A person ${index + 1}"),
                    trailing: Icon(Icons.phone),
                  );
                }),
            Center(child: Icon(Icons.start)),
            Center(child: Icon(Icons.call)),
          ]),
        ));
  }
}

import 'package:flutter/material.dart';

class TabBarWidgets extends StatefulWidget {
  const TabBarWidgets({super.key});

  @override
  State<TabBarWidgets> createState() => _TabBarWidgetsState();
}

class _TabBarWidgetsState extends State<TabBarWidgets> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            bottom: TabBar(indicatorColor: Colors.black, tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(Icons.chat_bubble),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Chats',
              ),
            ]),
          ),
          body: Center(
              child: Container(
                  child: Text(
            "Chat",
            style: TextStyle(fontSize: 25),
          ))),
        ));
  }
}

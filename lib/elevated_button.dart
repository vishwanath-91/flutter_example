import 'package:flutter/material.dart';

class Elevatedwidgets extends StatefulWidget {
  const Elevatedwidgets({super.key});

  @override
  State<Elevatedwidgets> createState() => _ElevatedwidgetsState();
}

class _ElevatedwidgetsState extends State<Elevatedwidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("elevated button")),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    print("elevated button clicked");
                  },
                  child: Text(
                    "click",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    print("elevated button clicked");
                  },
                  child: Text(
                    "click",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ))),
        ],
      ),
    );
  }
}

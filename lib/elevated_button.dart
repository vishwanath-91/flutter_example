import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Elevatedwidgets extends StatefulWidget {
  const Elevatedwidgets({super.key});

  @override
  State<Elevatedwidgets> createState() => _ElevatedwidgetsState();
}

class _ElevatedwidgetsState extends State<Elevatedwidgets> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("elevated button")),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: "This is elevated button msg",
                    );
                    setState(() {});
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

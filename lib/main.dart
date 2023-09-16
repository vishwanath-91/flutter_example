import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'drawer_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: FToastBuilder(),
        theme: ThemeData(
          primaryColor: Colors.blueGrey,
          useMaterial3: true,
          //////////////////////////////////
          appBarTheme: const AppBarTheme(
            color: Colors.blueGrey,
          ),
          //////////////////////////////
          brightness: Brightness.dark,
          /////////////////////////////

          elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ))),
                shadowColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                side:
                    MaterialStatePropertyAll(BorderSide(color: Colors.indigo))),
          ),
        ),
        //////////////////////////////
        home: const Scaffold(
          body: Drawerwidgets(),
        ));
  }
}

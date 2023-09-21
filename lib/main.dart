import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Bottom_Navigation_bar.dart';

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
          useMaterial3: true,
          primaryColor: Colors.white,
          //////////////////////////////////
          appBarTheme: const AppBarTheme(
            color: Colors.blueGrey,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
          ),
          //////////////////////////////
          brightness: Brightness.light,
          /////////////////////////////

          elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
                shadowColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),
                backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
                side:
                    MaterialStatePropertyAll(BorderSide(color: Colors.indigo))),
          ),
        ),
        //////////////////////////////
        home: const Scaffold(
          body: BottomNavigationBarExample(),
        ));
  }
}

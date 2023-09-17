import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'animated_text_widget.dart';

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
          primaryColor: Colors.black,
          useMaterial3: true,
          //////////////////////////////////
          appBarTheme: const AppBarTheme(
            color: Colors.black,
          ),
          //////////////////////////////
          brightness: Brightness.dark,
          /////////////////////////////

          elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
                shadowColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                side:
                    MaterialStatePropertyAll(BorderSide(color: Colors.indigo))),
          ),
        ),
        //////////////////////////////
        home: const Scaffold(
          body: AnimatedWidgetxxx(),
        ));
  }
}

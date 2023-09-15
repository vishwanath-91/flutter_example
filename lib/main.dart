import 'package:flutter/material.dart';

import 'elevated_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.indigo,
            useMaterial3: true,
            //////////////////////////////////
            appBarTheme: const AppBarTheme(
                color: Colors.indigo,
                titleTextStyle: TextStyle(
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            //////////////////////////////
            brightness: Brightness.dark,
            ////////////////////////////
            textTheme: const TextTheme(
              titleLarge: TextStyle(color: Colors.red, fontSize: 25.0),
              titleMedium: TextStyle(color: Colors.orange, fontSize: 20),
              titleSmall: TextStyle(color: Colors.blue, fontSize: 15),
              bodyLarge: TextStyle(color: Colors.red, fontSize: 25.0),
              bodyMedium: TextStyle(color: Colors.orange, fontSize: 20),
              bodySmall: TextStyle(color: Colors.blue, fontSize: 15),
            ),
            ////////////////////////////////

            elevatedButtonTheme: const ElevatedButtonThemeData(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10)))),
                    shadowColor:
                        MaterialStatePropertyAll(Colors.deepPurpleAccent),
                    backgroundColor: MaterialStatePropertyAll(Colors.white)))
            /////////////////////////

            ),

        //////////////////////////////
        home: const Scaffold(
          body: Elevatedwidgets(),
        ));
  }
}

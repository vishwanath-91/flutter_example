import 'package:flutter/material.dart';
import 'package:flutter_example/wrap_widget.dart';

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
          appBarTheme: const AppBarTheme(
              color: Colors.indigo,
              titleTextStyle: TextStyle(
                  letterSpacing: 5, fontWeight: FontWeight.bold, fontSize: 25)),
          brightness: Brightness.dark,
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontSize: 25.0,
            ),
            titleMedium: TextStyle(fontSize: 20),
            titleSmall: TextStyle(fontSize: 15),
            bodyLarge: TextStyle(color: Colors.blue, fontSize: 22),
            bodyMedium: TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 2,
                fontWeight: FontWeight.bold),
            bodySmall: TextStyle(),
          ),
        ),
        home: const Scaffold(
          body: WrapWidget(),
        ));
  }
}

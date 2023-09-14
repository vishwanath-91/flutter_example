import 'package:flutter/material.dart';

import 'container_widgets.dart';

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
          appBarTheme: AppBarTheme(color: Colors.indigo),
          brightness: Brightness.dark,
          textTheme: const TextTheme(
              titleMedium: TextStyle(fontSize: 20),
              titleSmall: TextStyle(fontSize: 15),
              titleLarge: TextStyle(
                fontSize: 25.0,
              ),
              bodySmall: TextStyle(),
              bodyLarge: TextStyle(color: Colors.indigo, fontSize: 22),
              bodyMedium: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold)),
        ),
        home: const Scaffold(
          body: ContainerWidgets(),
        ));
  }
}

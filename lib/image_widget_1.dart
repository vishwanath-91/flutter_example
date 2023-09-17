import 'package:flutter/material.dart';

class Imagewidgets extends StatefulWidget {
  const Imagewidgets({super.key});

  @override
  State<Imagewidgets> createState() => _ImagewidgetsState();
}

class _ImagewidgetsState extends State<Imagewidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 300,
          decoration: const BoxDecoration(color: Colors.white),
          child: Image.network(
            "https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

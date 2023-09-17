import 'package:flutter/material.dart';

class ImageWidgets extends StatefulWidget {
  const ImageWidgets({super.key});

  @override
  State<ImageWidgets> createState() => _ImageWidgetsState();
}

class _ImageWidgetsState extends State<ImageWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Widgets")),
      body: Center(
          child: Container(
        height: 300,
        width: 250,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5.0),
            ],
            image: DecorationImage(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1448167415/photo/smiling-indian-businessman-in-suit-and-glasses-with-laptop-near-office-building.webp?b=1&s=170667a&w=0&k=20&c=kQ-sWPkU5XP8sG1-MIrGnTe9SkLQBjGvVsa2X8uVHfc="),
                fit: BoxFit.cover),
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(60)),
      )),
    );
  }
}

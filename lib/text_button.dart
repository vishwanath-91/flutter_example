import 'package:flutter/material.dart';

class Textbuttonwidgets extends StatelessWidget {
  const Textbuttonwidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Button")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  overlayColor: MaterialStatePropertyAll(Colors.blueGrey),
                  textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 18)),
                ),
                onPressed: () {},
                child: const Text(
                  "Add",
                )),
          ),
          Center(
            child: TextButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    overlayColor: MaterialStatePropertyAll(Colors.blueGrey)),
                onPressed: () {},
                child: const Text(
                  "Update",
                )),
          ),
          Center(
            child: TextButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    overlayColor: MaterialStatePropertyAll(Colors.blueGrey)),
                onPressed: () {},
                child: const Text(
                  "Edit",
                )),
          ),
          Center(
            child: TextButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    overlayColor: MaterialStatePropertyAll(Colors.blueGrey)),
                onPressed: () {},
                child: const Text(
                  "Delete",
                )),
          ),
          Text("Data"),
        ],
      ),
    );
  }
}

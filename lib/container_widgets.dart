import 'package:flutter/material.dart';

class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("container")),
      body: Center(
        child: Container(
            width: 300,
            height: 200,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.cyan,
                //shape: BoxShape.circle,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(90),
                    bottomLeft: Radius.circular(90)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 20,
                  )
                ]),
            child: const Text("I Am Container")),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BottomSheetWidgets extends StatefulWidget {
  const BottomSheetWidgets({super.key});

  @override
  State<BottomSheetWidgets> createState() => _BottomSheetWidgetsState();
}

class _BottomSheetWidgetsState extends State<BottomSheetWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet Widgets"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const Column(
                    children: [
                      ListTile(title: Text("1"), subtitle: Text("Gallery")),
                      ListTile(title: Text("1"), subtitle: Text("Gallery")),
                      ListTile(title: Text("1"), subtitle: Text("Gallery")),
                      ListTile(title: Text("1"), subtitle: Text("Gallery")),
                      ListTile(title: Text("1"), subtitle: Text("Gallery")),
                    ],
                  );
                },
              );
            },
            child: Text(
              "Bottom sheet widget",
              style: TextStyle(color: Theme.of(context).primaryColor),
            )),
      ),
    );
  }
}

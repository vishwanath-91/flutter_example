import 'package:flutter/material.dart';

class AlertDialogBox extends StatefulWidget {
  const AlertDialogBox({super.key});

  @override
  State<AlertDialogBox> createState() => _AlertDialogBoxState();
}

class _AlertDialogBoxState extends State<AlertDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Dialog Box')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _ShowMyDialog(context);
            },
            child: Text(
              "Alert",
              style: TextStyle(color: Theme.of(context).primaryColor),
            )),
      ),
    );
  }
}

Future<void> _ShowMyDialog(BuildContext Context) async {
  return showDialog(
      context: Context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          title: const Text("this is an alert"),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text("this is a demo"),
                Text("this is vishwanath nishad")
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: const Text("Approve")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"))
          ],
        );
      });
}

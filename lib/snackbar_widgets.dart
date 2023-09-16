import 'package:flutter/material.dart';

class SnackbarWidgets extends StatefulWidget {
  const SnackbarWidgets({super.key});

  @override
  State<SnackbarWidgets> createState() => _SnackbarWidgetsState();
}

class _SnackbarWidgetsState extends State<SnackbarWidgets> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Show Snackbar'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Awesome Snackbar!'),
              action: SnackBarAction(
                label: 'OK',
                onPressed: () {
                  // Code to execute.
                },
              ),
              backgroundColor: Colors.indigo,
              behavior: SnackBarBehavior.floating,
            ),
          );
        },
      )),
    );
  }
}

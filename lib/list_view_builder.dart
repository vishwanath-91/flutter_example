import 'package:flutter/material.dart';

class Listviewbuilder extends StatefulWidget {
  const Listviewbuilder({super.key});

  @override
  State<Listviewbuilder> createState() => _ListviewbuilderState();
}

class _ListviewbuilderState extends State<Listviewbuilder> {
  Map studentIdName = {
    '1': 'hari',
    '2': 'kavi',
    '3': 'mahesh',
    '4': 'orio',
    '5': 'kanti',
    '6': 'maari',
    '7': 'monti',
    '8': 'vaakari',
    '9': 'nonari',
    '10': 'kantri',
    '11': 'menagola',
    '12': 'pantri',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View")),
      body: Center(
        child: ListView.builder(
          itemCount: studentIdName.length,
          itemBuilder: (BuildContext context, int index) {
            String key = studentIdName.keys.elementAt(index);

            return Card(
              child: ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: Text(key),
                  subtitle: Text(studentIdName[key].toString().toUpperCase()),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.add))),
            );
          },
        ),
      ),
    );
  }
}

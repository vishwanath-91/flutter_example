import 'package:flutter/material.dart';
import 'package:flutter_example/rich_Text.dart';

import 'animated_text_widget.dart';
import 'list_view_builder.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  PageController pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(children: const [
            DrawerHeader(
                child: Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://images.ctfassets.net/vztl6s0hp3ro/2Zg9Mth4qC5EGGWHoJIy9T/3f0dbdf8884231a3e9e7998c514cc1fa/Unleash-employee-potential-with-personal-professional-development-examples.jpg"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("vishwanath nishad"),
                        Text("om.vishwanath.91@gmail.com")
                      ],
                    ),
                  )
                ],
              ),
            )),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text("My Folder"),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("shared with me"),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("starred"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text("upload"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("share"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ]),
        ),
      ),
      /*drware part end heare*/
      ////////////////////////
      ///////////////////////
      body: PageView(
        controller: pageController,
        children: const [
          RichFont(),
          Listviewbuilder(),
          AnimatedWidgetxxx(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

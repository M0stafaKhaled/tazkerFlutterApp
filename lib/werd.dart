import 'package:flutter/material.dart';
import 'main.dart';

class Werd extends StatefulWidget {
  @override
  WerdState createState() => WerdState();
}

class WerdState extends State<Werd> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> widgetOptions = <Widget>[
    Home(),
    Center(
      child: Text("fav"),
    )
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
      body: widgetOptions.elementAt(selectedIndex),
    );
  }
}

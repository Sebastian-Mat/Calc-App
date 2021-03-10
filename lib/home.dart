import 'package:flutter/material.dart';
import "physics.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 2;
  List<Widget> _widgetOptions = [
    Physics(),
    Text("Math"),
    Text("Home"),
    Text("Geometry"),
    Text("Text")
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2), spreadRadius: 0, blurRadius: 5),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                  iconSize: 27,
                  currentIndex: _selectedIndex,
                  onTap: _onItemTap,
                  selectedItemColor: Colors.blue,
                  unselectedItemColor: Colors.grey,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.straighten),
                      label: "Physics",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.subscript),
                      label: "Mathematics",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.square_foot),
                      label: "Geometry",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.text_fields),
                      label: "Text",
                    ),
                  ]),
            )),
      ),
    );
  }
}

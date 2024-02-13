import 'package:flutter/material.dart';
import 'Personal_detail.dart';
import 'Social.dart';
import 'Experience.dart';
import 'Skill.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _widgetOptions = <Widget>[
    PersonalDetail(), // Make sure this is the correct name of your page in Personal_detail.dart
    Experience(),
    Skill(),
    Social(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Personal Details',
              backgroundColor: Color.fromRGBO(0, 65, 157, 1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Experience',
              backgroundColor: Color.fromRGBO(0, 65, 157, 1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.recent_actors),
              label: 'Skills',
              backgroundColor: Color.fromRGBO(0, 65, 157, 1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.social_distance),
              label: 'Social Media',
              backgroundColor: Color.fromRGBO(0, 65, 157, 1),
              ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 253, 253, 10),
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Skills and Certifications'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                'Skills',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('MERN STACK'),
              subtitle: Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow), // Beginner
                  Icon(Icons.star, color: Colors.orange), // Intermediate
                  Icon(Icons.star, color: Colors.red), // Expert
                ],
              ),
            ),
            ListTile(
              title: Text('PHP laravel'),
              subtitle: Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow), // Beginner
                  Icon(Icons.star, color: Colors.orange), // Intermediate
                   // Expert
                ],
              ),
            ),
            ListTile(
              title: Text('python'),
              subtitle: Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow), // Beginner
                  Icon(Icons.star, color: Colors.orange), // Intermediate
                  Icon(Icons.star, color: Colors.red), // Expert
                ],
              ),
            ),
            ListTile(
              title: Text('Manuval Testing'),
              subtitle: Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow), // Beginner
                  Icon(Icons.star, color: Colors.orange), // Intermediate
                   // Expert
                ],
              ),
            ),
            ListTile(
              title: Text('Figma & Canva'),
              subtitle: Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow), // Beginner
                  Icon(Icons.star, color: Colors.orange), // Intermediate
                  Icon(Icons.star, color: Colors.red), // Expert
                ],
              ),
            ),
            // Add more ListTile for more skills
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                'Certifications',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/mernstack.jpg', width: 500, height: 200), // Replace with your asset image path
                  Text('Mern Stack', style: TextStyle(fontSize: 16.0)),
                  Image.asset('assets/laravel.jpg',width: 500, height: 200), // Replace with your asset image path
                  Text('Php - laravel', style: TextStyle(fontSize: 16.0)),
                  Image.asset('assets/python.jpg',width: 500, height: 200), // Replace with your asset image path
                  Text('Python', style: TextStyle(fontSize: 16.0)),
                  Image.asset('assets/manuval_testing.jpg',width: 500, height: 200), // Replace with your asset image path
                  Text('Manuval testing', style: TextStyle(fontSize: 16.0)),
                ],
              ),
            ),
            // Add more Containers for more certificates
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/developer.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 20), // Add space at the top
                ElevatedButton.icon(
                  icon: Icon(Icons.mail, size: 24), // Increase icon size
                  label: Text('Email', style: TextStyle(fontSize: 20, color: Colors.yellow)), // Increase text size and change color to yellow
                  onPressed: () => launch('mailto:mugilaananthan@gmail.com'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50), // Make the button full width and increase height
                    primary: Colors.transparent, // Make the button transparent
                    onPrimary: Colors.yellow, // Change the splash color to yellow
                  ),
                ),
                SizedBox(height: 20), // Increase space between buttons
                ElevatedButton.icon(
                  icon: Icon(Icons.face, size: 24),
                  label: Text('Website', style: TextStyle(fontSize: 20, color: Colors.yellow)),
                  onPressed: () => launch('https://mugil.netlify.app/'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    primary: Colors.transparent,
                    onPrimary: Colors.yellow,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  icon: Icon(Icons.code, size: 24),
                  label: Text('GitHub', style: TextStyle(fontSize: 20, color: Colors.yellow)),
                  onPressed: () => launch('https://github.com/Mugil1410'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    primary: Colors.transparent,
                    onPrimary: Colors.yellow,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  icon: Icon(Icons.camera_alt, size: 24),
                  label: Text('Instagram', style: TextStyle(fontSize: 20, color: Colors.yellow)),
                  onPressed: () => launch('https://www.instagram.com/booheymen/'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    primary: Colors.transparent,
                    onPrimary: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

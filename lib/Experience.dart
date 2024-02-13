import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/developer.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.2),
                ],
                stops: [0.0, 0.8, 1.0],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Software Developer Intern', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                  Text('Oct 2023 - Present', style: TextStyle(fontSize: 18, color: Colors.white)),
                  TextButton(
                    onPressed: () => launch('http://www.anwestsolution.com/'),
                    child: Text('Anwest Solution', style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 233, 252, 20))),
                  ),
                  ElevatedButton(
                    onPressed: () => launch('mailto:mugilaananthan@gmail.com'), // replace with your email
                    child: Text('Buy me a coffee :)', style: TextStyle(fontSize: 18,color: Color.fromARGB(221, 252, 109, 20))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




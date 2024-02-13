import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PersonalDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IntroVideo(),
      ),
    );
  }
}

class IntroVideo extends StatefulWidget {
  @override
  _IntroVideoState createState() => _IntroVideoState();
}

class _IntroVideoState extends State<IntroVideo> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
      'assets/intro.mp4', // replace with your local video path
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/developer.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                              } else {
                                _controller.play();
                              }
                            });
                          },
                          child: Icon(
                            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                          ),
                          backgroundColor: Color.fromARGB(255, 209, 234, 16), // Make the button 30% transparent
                        ),
                      ),
                    ],
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/user.png'), // replace with your image path
            ),
            SizedBox(height: 20),
            Text('Name: Mugilaananthan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)), // replace with your name
            Text('DOB: 14-10-2001', style: TextStyle(fontSize: 18, color: Colors.white)), // replace with your dob
            Text('Address: Sriperumbudur, Chennai 602105', style: TextStyle(fontSize: 18, color: Colors.white)), // replace with your address
            Text('Skill: Full Stack Developer', style: TextStyle(fontSize: 18, color: Colors.white)), // replace with your skills
          ],
        ),
      ),
    );
  }
}

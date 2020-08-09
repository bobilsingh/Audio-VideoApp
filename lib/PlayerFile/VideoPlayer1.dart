import 'package:BS_Player/PlayerFile/VideoPlayer2.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayVideo extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<PlayVideo> {
  String videoURL = "https://youtu.be/hoNb6HuNmU0";

  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: <Widget>[
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Text(
                'Full Song: KHAIRIYAT (BONUS TRACK) | CHHICHHORE | Sushant, Shraddha | Pritam, Amitabh B|Arijit Singh',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            Container(
              child: new RaisedButton(
                color: Colors.blue.shade500,
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.yellow.shade500,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PlayVideo2())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

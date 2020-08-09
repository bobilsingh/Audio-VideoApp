import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: camel_case_types
class PlayVideo2 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<PlayVideo2> {
  String videoURL = "https://youtu.be/c7qie6Fg-IQ";

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
                'College : Mankirt Aulakh (Official Song) Singga | MixSingh | Latest Punjabi Songs 2019 | Sky Digital',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            Spacer(),
            Container(
              child: Text(
                '\n\n\nThanks For Watching This Video',
                style: TextStyle(color: Colors.white, fontSize: 26.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

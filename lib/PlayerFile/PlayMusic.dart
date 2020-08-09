import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

var music = AudioPlayer();
var music1 = AudioPlayer();
var p = AudioCache(fixedPlayer: music);

var blueColor = Color(0xFF090e42);
var pinkColor = Color(0xFFff6b80);

var Ekmulakat = 'https://i.ytimg.com/vi/zing4uQ3dR4/hqdefault.jpg';
var aashiqui =
    'https://lh3.googleusercontent.com/-vqRXyU5HwYc/VTRutSdx5VI/AAAAAAAAACE/BOMQQWq24dQ/Tum-Hi-Ho-lyrics-from-Aashiqui-2.jpg';
var halfgirlf =
    'https://4.bp.blogspot.com/-YXEvg38COr0/WnyclMc19NI/AAAAAAAAGEQ/K-kkSxd3mBo3jNgnAOnkEFouJdUdawtIQCLcBGAs/s640/pher%2Bbhi%2Btumko%2Bchahunga.jpg';
var kabirsingh =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS8UBM0jmEc0y2emJ1VRSTyL1CI6Vyjzgwm4A&usqp=CAU';
var ayedil =
    'https://images-na.ssl-images-amazon.com/images/I/7124o8EBsQL._SL1336_.jpg';
var savan =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQBJRb_9pCFZ7gFLg3k_zzaUGQHksff5i2WHw&usqp=CAU';

class PlayAudio extends StatefulWidget {
  @override
  _PlayAudioState createState() => _PlayAudioState();
}

class _PlayAudioState extends State<PlayAudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 32.0,
            ),
            Text(
              'PLAYLIST',
              style: TextStyle(
                  color: Color(0xFFff6b80),
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0),
            ),
            SizedBox(
              height: 12.0,
            ),
            SongItem('Ek Mulaqaat Me', 'Dream Girl', Ekmulakat),
            SongItem('Mai Phir Bhi Tumko', 'Half Girlfriend', halfgirlf),
            SongItem('Kaise Hua', 'Kabir Singh', kabirsingh),
            SongItem('Tum Hi Ho', 'Aashiqui 2', aashiqui),
            SongItem('Chenna Mereya', 'Ae Dil Hai Mushkil', ayedil),
            SongItem('Savan Aaya Hai', 'Creature 3D', savan),
          ],
        ),
      ),
    );
  }
}

class SongItem extends StatelessWidget {
  final title;
  final artist;
  final image;
  SongItem(this.title, this.artist, this.image);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailedScreen(title, artist, image)));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 26.0),
        child: Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                    height: 80.0,
                    width: 80.0,
                    child: Icon(
                      Icons.play_circle_filled,
                      color: Colors.white.withOpacity(0.7),
                      size: 42.0,
                    ))
              ],
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  artist,
                  style: TextStyle(color: Colors.blue[100], fontSize: 18.0),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.more_horiz,
              color: Colors.white.withOpacity(0.6),
              size: 32.0,
            )
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final image;
  final title;
  ItemCard(this.image, this.title);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120.0,
            child: Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      height: 140.0,
                      width: double.infinity,
                    )),
                Positioned(
                  right: 16.0,
                  top: 16.0,
                  child: Icon(
                    Icons.bookmark,
                    color: Colors.white.withOpacity(0.6),
                    size: 24.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.16),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search music...',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Icons.mic,
            color: Colors.white,
          ),
          SizedBox(
            width: 8.0,
          ),
        ],
      ),
    );
  }
}

class DetailedScreen extends StatelessWidget {
  final title;
  final artist;
  final image;
  DetailedScreen(this.title, this.artist, this.image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Column(
        children: <Widget>[
          Container(
            height: 500.0,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image), fit: BoxFit.cover)),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [blueColor.withOpacity(0.4), blueColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 52.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(50.0)),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Click To Play',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Best Bollywood Songs !!',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6))),
                            ],
                          ),
                          Icon(
                            Icons.playlist_add,
                            color: Colors.white,
                          )
                        ],
                      ),
                      Spacer(),
                      Text(title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0)),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        artist,
                        style: TextStyle(color: Colors.orange, fontSize: 18.0),
                      ),
                      SizedBox(height: 16.0),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Card(
                child: IconButton(
                  icon: Icon(Icons.pause),
                  onPressed: () {
                    music.pause();
                    Fluttertoast.showToast(
                        msg: "Audio Paused",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        fontSize: 10.0);
                  },
                  color: Colors.black,
                ),
                color: Colors.grey,
              ),
              Card(
                child: IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {
                    music.play(
                        "https://raw.githubusercontent.com/bobilsingh/Flutter-Task-1/master/Ik%20Mulaqaat%20-%20Dream%20Girl%20_%20Ayushmann%20Khurrana%2C%20Nushrat%20Bharucha%20_%20Meet%20Bros%20Ft.%20Altamash%20F%20%26%20Palak%20M.mp3");
                    Fluttertoast.showToast(
                        msg: "Audio(Asset)",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        fontSize: 10.0);
                  },
                  color: Colors.black,
                ),
                color: Colors.grey,
              ),
              Card(
                child: IconButton(
                  icon: Icon(Icons.stop),
                  onPressed: () {
                    music.stop();
                    Fluttertoast.showToast(
                        msg: "stop",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        fontSize: 10.0);
                  },
                  color: Colors.black,
                ),
                color: Colors.grey,
              ),
              Card(
                child: IconButton(
                  icon: Icon(Icons.play_circle_filled),
                  onPressed: () {
                    music1.play(
                        "https://raw.githubusercontent.com/bobilsingh/Flutter-Task-1/master/Ik%20Mulaqaat%20-%20Dream%20Girl%20_%20Ayushmann%20Khurrana%2C%20Nushrat%20Bharucha%20_%20Meet%20Bros%20Ft.%20Altamash%20F%20%26%20Palak%20M.mp3");
                    Fluttertoast.showToast(
                        msg: "Audio(Internet)",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        fontSize: 10.0);
                  },
                  color: Colors.black,
                ),
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

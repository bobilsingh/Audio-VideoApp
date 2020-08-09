import 'dart:ui';
import 'package:BS_Player/PlayerFile/Contact.dart';
import 'package:BS_Player/PlayerFile/PlayMusic.dart';
import 'package:BS_Player/PlayerFile/VideoPlayer1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: Column(
              children: [
                Container(
                  width: 220,
                  height: 60,
                  child: new Card(
                    child: new RaisedButton(
                      color: Colors.blue.shade900,
                      child: Text(
                        'Play Audio',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => PlayAudio())),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 220,
                      height: 60,
                      child: new Card(
                        child: new RaisedButton(
                          color: Colors.blue.shade900,
                          child: Text(
                            'Play Video',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => PlayVideo())),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      appBar: AppBar(
        title: Text('BS Player'),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('BOBIL SINGH'),
              accountEmail: Text('bobilchauhan@yahoo.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Image.asset('assets/icon/icon.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Image.asset('assets/icon/icon.png'),
                )
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.music_note,
              ),
              title: Text('Play Audio'),
              selected: true,
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PlayAudio())),
            ),
            ListTile(
              leading: Icon(
                Icons.music_video,
              ),
              title: Text('Play Video'),
              selected: true,
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PlayVideo())),
            ),
            Divider(
              color: Colors.grey.shade400,
            ),
            ListTile(
              leading: Icon(
                Icons.contacts,
              ),
              title: Text('Contact Me'),
              selected: true,
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Contact())),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: Icon(Icons.bug_report),
                title: Text('Bug_Report'),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

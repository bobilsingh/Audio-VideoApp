import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
      ),
      backgroundColor: Colors.blue.shade900,
      body: Center(
          child: Text(
        'Name : BOBIL SINGH\n\nEmail ID : bobilchauhan@yahoo.com\n\nMobile No : 9027136352\n\nAddress : Haridwar',
        style: TextStyle(fontSize: 25, color: Colors.white),
      )),
    );
  }
}

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

// ignore: non_constant_identifier_names
Widget MusicButton(String location, Color color) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play(location);
      },
      child: null,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "XylophoneApp",
      // theme: ThemeData(primarySwatch: Colors.black12),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Container(
              color: Colors.black12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  MusicButton("note1.wav", Colors.red),
                  MusicButton("note2.wav", Colors.amberAccent),
                  MusicButton("note3.wav", Colors.blue),
                  MusicButton("note4.wav", Colors.orange),
                  MusicButton("note5.wav", Colors.green),
                  MusicButton("note6.wav", Colors.pink),
                  MusicButton("note7.wav", Colors.lightBlueAccent),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

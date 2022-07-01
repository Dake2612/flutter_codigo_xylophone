import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  AudioCache audioCache = AudioCache();

  void playNote(int note) {
    audioCache.play("audios/note$note.wav");
  }

  Expanded buildKey({required Color colorKey, required int note}) {
    return Expanded(
      child: Container(
        color: colorKey,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Xylophone"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(colorKey: Colors.pink, note: 1),
          buildKey(colorKey: Colors.indigo, note: 2),
          buildKey(colorKey: Colors.deepPurpleAccent, note: 3),
          buildKey(colorKey: Colors.deepPurple, note: 4),
          buildKey(colorKey: Colors.purple, note: 5),
          buildKey(colorKey: Colors.redAccent, note: 6),
          buildKey(colorKey: Colors.deepOrangeAccent, note: 7),
        ],
      ),
    );
  }
}

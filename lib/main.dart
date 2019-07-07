import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget buildKey(number, color) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playNote(number);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(1, Colors.red),
                  buildKey(2, Colors.orange),
                  buildKey(3, Colors.yellow),
                  buildKey(4, Colors.green),
                  buildKey(5, Colors.teal),
                  buildKey(6, Colors.blue),
                  buildKey(7, Colors.purple),
                ]),
          ),
        ),
      ),
    );
  }
}

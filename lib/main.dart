import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void click(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildKey(int c, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          click(c);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.lightBlue),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

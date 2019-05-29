import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioCache player = AudioCache();

  Expanded makeFlatButton({int audioNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          player.play('note$audioNumber.wav');
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
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              makeFlatButton(audioNumber: 1, color: Colors.red),
              makeFlatButton(audioNumber: 2, color: Colors.orange),
              makeFlatButton(audioNumber: 3, color: Colors.yellow),
              makeFlatButton(audioNumber: 4, color: Colors.green),
              makeFlatButton(audioNumber: 6, color: Colors.blue),
              makeFlatButton(audioNumber: 5, color: Colors.indigo),
              makeFlatButton(audioNumber: 7, color: Colors.purple),
            ],
          ),
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('audio$num.wav');
  }

  Expanded buildKey({Color color, int num, String note}) {
    return Expanded(
      child: Card(
        color: color,
        //margin:
        // EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
        child: FlatButton(
          onPressed: () {
            playSound(num);
          },
          child: Text(note),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.redAccent, num: 1, note: 'Listening'),

              buildKey(color: Colors.orange, num: 2, note: 'Spank'),

              buildKey(color: Colors.yellow, num: 3, note: 'Sting'),

              buildKey(color: Colors.green, num: 4, note: 'Noise'),

              buildKey(color: Colors.blueGrey, num: 5, note: 'Behave'),
              Expanded(
                child: Card(
                  color: Colors.blueAccent,
                  //margin:
                  //EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                  child: FlatButton(
                    onPressed: () {
                      playSound(6);
                    },
                    child: Text('Samething'),
                  ),
                ),
              ), //this old example long way
              Expanded(
                child: Card(
                  color: Colors.purple,
                  //margin:
                  //EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                  child: FlatButton(
                    onPressed: () {
                      playSound(7);
                    },
                    child: Text('Ask'),
                  ),
                ),
              ), //better use above function
            ],
          ),
        ),
      ),
    );
  }
}

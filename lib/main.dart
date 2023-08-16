import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyXylophoneApp());
}

class MyXylophoneApp extends StatelessWidget {
  const MyXylophoneApp({Key? key}) : super(key: key);

  /// function to play specific note
  void playNote(int number) {
    AssetsAudioPlayer.newPlayer().open(Audio('assets/note$number.wav'));
  }

  /// create function to create repeated widget
  Widget buildKey({required int keyNum, Color? myColor}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          playNote(keyNum);
        },
        child: Container(decoration: BoxDecoration(color: myColor)),),
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
              buildKey(keyNum: 1, myColor: Colors.red),
              buildKey(keyNum: 2, myColor: Colors.orange),
              buildKey(keyNum: 3, myColor: Colors.yellow),
              buildKey(keyNum: 4, myColor: Colors.blue),
              buildKey(keyNum: 5, myColor: Colors.green),
              buildKey(keyNum: 6, myColor: Colors.grey),
              buildKey(keyNum: 7, myColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

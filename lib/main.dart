import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp(
));
class XylophoneApp extends StatelessWidget {
  int soundNumber = 1;


  void playSound(int number) {
    final player = AudioCache();
    player.play('assets_note$number.wav');
  }

  Expanded playButton({Color color, int number}) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playSound(number);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playButton(color: Colors.red, number: 1),
              playButton(color: Colors.green, number: 2),
              playButton(color: Colors.blue, number: 3),
              playButton(color: Colors.yellow, number: 4),
              playButton(color: Colors.purple, number: 5),
              playButton(color: Colors.orange, number: 6),
              playButton(color: Colors.lightBlue, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

// ignore: must_be_immutable
class XylophoneApp extends StatelessWidget {
  // var italics;

  void playSound(int soundNumber) {
    var player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Text getText() {
    var textColor = Colors.white;

    return Text(
      'Click me!',
      style: TextStyle(fontStyle: FontStyle.italic, color: textColor),
    );
  }

  Color getTileColor(int soundNumber) {
    if (soundNumber == 1) {
      return Colors.purple.shade900;
    } 
    if (soundNumber == 2) {
      return Colors.red;
    } 
    if (soundNumber == 3) {
      return Colors.orangeAccent;
    } 
    if (soundNumber == 4) {
      return Colors.lightGreen;
    } 
    if (soundNumber == 5) {
      return Color.fromARGB(255, 33, 123, 36);
    } 
    if (soundNumber == 6 ) {
      return Colors.blue;
    } 
    if (soundNumber == 7) {
      return Colors.deepPurple;
    } 


      return Colors.red;
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
                  color: getTileColor(1),
                  child: TextButton(
                    onPressed: () async {
                      playSound(1);
                    },
                    child: getText(),
                  )),
            ),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
                color: getTileColor(2),
                child: TextButton(
                  onPressed: () async {
                    playSound(2);
                  },
                  child: getText(),
                ),
              ),
            ),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
                // color: Colors.orangeAccent,
                color: getTileColor(3),
                child: TextButton(
                  onPressed: () async {
                    playSound(3);
                  },
                  child: getText(),
                ),
              ),
            ),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
                // color: Colors.lightGreen,
                color: getTileColor(4),
                child: TextButton(
                  onPressed: () async {
                    playSound(4);
                  },
                  child: getText(),
                ),
              ),
            ),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
                // color: Color.fromARGB(255, 33, 123, 36),
                color: getTileColor(5),
                child: TextButton(
                  onPressed: () async {
                    playSound(5);
                  },
                  child: getText(),
                ),
              ),
            ),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
                // color: Colors.blue,
                color: getTileColor(6),
                child: TextButton(
                  onPressed: () async {
                    playSound(6);
                  },
                  child: getText(),
                ),
              ),
            ),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
                // color: Colors.deepPurple,
                color: getTileColor(7),
                child: TextButton(
                  onPressed: () async {
                    playSound(7);
                  },
                  child: getText(),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

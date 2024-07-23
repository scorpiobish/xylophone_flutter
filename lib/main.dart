import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    var player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
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
                color: Colors.purple.shade900,
                child: TextButton(
                  onPressed: () async {
                    playSound(1);
                  },
                  child: Text('Click me!'),
                ),
              ),
            ),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(child:Container(
              padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
              color: Colors.red,
              child: TextButton(
                onPressed: () async {
                  playSound(2);
                },
                child: Text('Click me!'),
              ),
            ),),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(child:Container(
              padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
              color: Colors.orangeAccent,
              child: TextButton(
                onPressed: () async {
                  playSound(3);
                },
                child: Text('Click me!'),
              ),
            ),),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(child:Container(
              padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
              color: Colors.lightGreen,
              child: TextButton(
                onPressed: () async {
                  playSound(4);
                },
                child: Text('Click me!'),
              ),
            ),),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(child:Container(
              padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
              color: Color.fromARGB(255, 33, 123, 36),
              child: TextButton(
                onPressed: () async {
                  playSound(5);
                },
                child: Text('Click me!'),
              ),
            ),),
            const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(child:Container(
              padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
              color: Colors.blue,
              child: TextButton(
                onPressed: () async {
                  playSound(6);
                },
                child: Text('Click me!'),
              ),
            ),),
           const SizedBox(
              height: 7.0,
              width: 50.0,
            ),
            Expanded(child:Container(
              padding: EdgeInsets.fromLTRB(26.0, 6.0, 26.0, 6.0),
              color: Colors.deepPurple,
              child: TextButton(
                onPressed: () async {
                  playSound(7);
                },
                child: Text('Click me!'),
              ),
            ),)
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // 빌드의 바깥에서 함수 생성**
  void playSound(int soundNumber) {
    // 함수 안에 input arguments** 넣고, 데이터 타입을 지정*.
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(4);
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(5);
                },
              ),
              FlatButton(
                color: Colors.indigo,
                onPressed: () {
                  playSound(6);
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

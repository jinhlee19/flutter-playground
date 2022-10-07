// 키에 따라 이미지 변경 #1

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(XylophoneApp());
// } 한줄의 코드만 있을때, 화살표 함수 이용가능.

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              animalFriends(),
            ],
          ),
        ),
      ),
    );
  }
}

class animalFriends extends StatefulWidget {
  @override
  _animalFriendsState createState() => _animalFriendsState();
}

class _animalFriendsState extends State<animalFriends> {
  // 빌드의 바깥에서 함수 생성**
  void playSound(int soundNumber) {
    // 함수 안에 input arguments** 넣고, 데이터 타입을 지정*.
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  int imageNumber = 1;
  // 왜 얘가 데이터타입이 되는지 아직 이해가 안감. 나중에 보기**
  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        height: 90,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
            setState(() {
              imageNumber = soundNumber;
            });
          },
          child: null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            buildKey();
          },
          child: Image.asset('images/$imageNumber.png'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.blue, soundNumber: 5),
              buildKey(color: Colors.indigo, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            'Xylophone Friends',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}

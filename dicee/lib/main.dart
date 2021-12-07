import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ), // AppBar
        body: DicePage(),
      ), // Scaffold
    ), // MaterialApp
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 6; // var, dynamic 사용 자제 -> 정적 변수타입 사용.
  int rightDiceNumber = 6;

  // FUNCTION은 extends State 안에 넣기!
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print('diceNumber = $leftDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                // TextButton 자체의 padding 적용확인 inspector - tree
                // Flat Button Depreciated.대체됨.
                // required -> onPressed 프로퍼티, 익명함수의 형태 참고
                onPressed: () {
                  changeDiceFace(); // function 호출로 변경
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ), // Padding
          ), // Expanded
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ), // Padding
          ), // Expanded
        ], // <Widget>[]
      ), // Row
    ); // Center
  }
}

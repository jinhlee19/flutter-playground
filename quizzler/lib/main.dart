import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // scoreKeeper - Variable-type<Data-type>

  List<Icon> scoreKeeper = [];

  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];
  // Checking User Answers #1
  List<bool> answers = [false, true, true];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          // ***** 텍스트 위치 *****
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                // 'testing text',
                questions[questionNumber],
                // setState에서 받은 변경값이 마킹되어 rebuild 를 트리거한다.
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            // ***** 정답 버튼 *****
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 20.0),
              ),
              child: const Text('True'),
              onPressed: () {
                setState(() {
                  bool correctAnswer = answers[questionNumber];
                  // Checking User Answer #2 - True Version of If Else !!
                  if (correctAnswer == true) {
                    print('user got it right!');
                  } else {
                    print('user got it wrong');
                  }
                  questionNumber++;
                }); //The user picked true.
                print(questionNumber);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            // ***** 오답 버튼 *****
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 20.0),
              ),
              child: const Text('False'),
              onPressed: () {
                setState(() {
                  // Checking User Answer #2 - False Version of If Else !!
                  bool correctAnswer = answers[questionNumber];
                  if (correctAnswer == false) {
                    print('user got it right!');
                  } else {
                    print('user got it wrong');
                  }
                  questionNumber++; // text 변경이 되는 부분 questions[questionNumber]를 업데이트 -> 마킹할 값으로 이동.
                });
                print(questionNumber);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
          // 기본이 dynamic이므로 데이터타입 명시해야함.
          // Syntax - List<String> myString = ['a','b','c']; -> "<String>"으로 설정
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/

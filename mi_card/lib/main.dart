import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 개발 중 hot reload, restart 가능 - 정적인 상태
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade700,
        body: SafeArea(
          child: Column(children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.yellow,
              // backgroundImage: NetworkImage("https://via.placeholder.com/100"),
              backgroundImage: AssetImage('images/avatar.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "이진혁",
              style: TextStyle(
                fontFamily: 'Cafe24SsurroundAir',
                fontSize: 30,
                color: Colors.white,
              ), // Text Style
            ),
            SizedBox(
              height: 3,
            ), // Text
            Text(
              "플러터 & 리액트 공부중",
              style: TextStyle(
                fontFamily: 'Cafe24SsurroundAir',
                fontSize: 18,
                color: Colors.blue.shade100,
              ), // Text Style
            ),
            Text(
              "함께가실 파티원 구합니다...",
              style: TextStyle(
                fontFamily: 'Cafe24SsurroundAir',
                fontSize: 12,
                color: Colors.blue.shade50,
              ), // Text Style
            ), // Text
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(40, 20, 40, 5),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade700,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "010-8697-2046",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontFamily: 'Cafe24SsurroundAir',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.blue.shade900,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "jinhlee19@gmail.com",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontFamily: 'Cafe24SsurroundAir',
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            )
          ]), // Widget, Column
        ), // SafeArea
      ), // Scaffold
    ); // Material App
  }
}

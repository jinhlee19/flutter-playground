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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.yellow,
                    // backgroundImage: NetworkImage("https://via.placeholder.com/100"),
                    backgroundImage: AssetImage('images/avatar.png'),
                  ), // CircleAvatar
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
                  ), // Text
                  SizedBox(
                    height: 3,
                  ), // SizedBox
                  Text(
                    "플러터 & 리액트 공부중",
                    style: TextStyle(
                      fontFamily: 'Cafe24SsurroundAir',
                      fontSize: 18,
                      color: Colors.blue.shade100,
                    ), // TextStyle
                  ), // Text
                  Text(
                    "함께가실 파티원 구합니다...",
                    style: TextStyle(
                      fontFamily: 'Cafe24SsurroundAir',
                      fontSize: 12,
                      color: Colors.blue.shade50,
                    ), // TextStyle
                  ), // Text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 20.0,
                      width: 150,
                      child: Divider(
                        color: Colors.blue.shade50,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.blue.shade700,
                      ), // Icon
                      title: Text(
                        "010-8697-2046",
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontFamily: 'Cafe24SsurroundAir',
                          fontSize: 15,
                        ), // TextStyle
                      ), // Text
                    ), //List Tile
                  ), // Card
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.blue.shade900,
                      ), // Icon
                      title: Text(
                        "jinhlee19@gmail.com",
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontFamily: 'Cafe24SsurroundAir',
                          fontSize: 15,
                        ), //TextStyle
                      ), // Text
                    ), //ListTile
                  ), //Card
                ]),
          ), // Widget, Column
        ), // SafeArea
      ), // Scaffold
    ); // Material App
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 개발 중 hot reload, restart 가능 - 정적인 상태
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.yellow,
              // backgroundImage: NetworkImage("https://via.placeholder.com/100"),
              backgroundImage: AssetImage('images/avatar.png'),
            ),
            Text(
              "Jinhyuk Lee",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

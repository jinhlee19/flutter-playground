import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 개발 중 hot reload, restart 가능 - 정적인 상태
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // stless > build -> rebuild(reload)
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        // 상단 스크린바 아래로만 작업할 수 있도록 제한.
        body: SafeArea(
          // 컨테이너에 차일드가 없으면 가능한 최대한 커지지만 차일드 생성 시, 그 사이즈에 맞게 축소된다.
          child: Container(
            // single child widget (multi와 구분)
            height: 100.0,
            width: 100.0,
            // margin: EdgeInsets.all(20.0),
            // margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
            // margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
            margin: EdgeInsets.only(left: 30.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Text('Hello'),
          ),
        ),
      ),
    );
  }
}

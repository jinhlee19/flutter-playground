import 'package:flutter/material.dart';
import 'screen2.dart';
import 'screen1.dart';
import 'screen0.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Todo 4: setting initial route
      // home: Screen0(),
      initialRoute: '/',
      // Todo 3: routes using map constructor
      //key = routes, : , value = expect a function as the value of the map - takes ‘context’ as a input and returns a widget
      //context: 현재 위젯의 위젯트리 상의 위치에 관한 정보를 담고 있는 변수.
      routes: {
        '/': (context) => Screen0(),
        '/first': (context) => Screen1(),
        '/second': (context) => Screen2(),
      },
    );
  }
}

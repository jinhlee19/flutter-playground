import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 개발 중 hot reload, restart 가능 - 정적인 상태
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // stless > build -> rebuild(reload)
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        // 상단 스크린바 아래로만 작업할 수 있도록 제한.
        body: SafeArea(
          // 컨테이너에 차일드가 없으면 가능한 최대한 커지지만 차일드 생성 시, 그 사이즈에 맞게 축소된다.
          // child: Column(
          child: Row(
            // #1
            // verticalDirection: VerticalDirection.up,
            // verticalDirection: VerticalDirection.down,
            // 하단의 필요없는 부분 제외
            // 위의 방향으로 올라감 -> .down이 default값,

            // #2
            // mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.center,

            // #3
            // crossAxisAlignment: CrossAxisAlignment.end,
            // 이떄 container가 같은 너비이면 변화x,
            // 추가 container(widge: double.infinity, height:10.0,),하면 변화를 볼수 있다.

            // #4 전체 너비 변화
            // 개별 입력 white Container 주석참고
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Container(
                // single child widget (multi와 구분)
                color: Colors.white,
                height: 100,
                width: 100,
                // width: double.infinity,
                child: Text('Hello'),
              ),
              SizedBox(
                height: 20.0,
                width: 20.0,
                // Row, CrossAxisAlignment 가 stretch,로 잡힐 경우 무시되고 늘어남..
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
              ),
            ],
          ), // column - widget -> list of items
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
          child: Text('Go Back To Screen 1'),
          // Todo 2: Navigator.pop - destory current screen and go back.
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ), //push
    );
  }
}

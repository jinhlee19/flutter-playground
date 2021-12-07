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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  print('Left button got pressed.');
                },
                child: Image.asset('images/dice1.png'),
              ),
            ), // Padding
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    print('Right button got pressed.');
                  },
                  child: Image.asset('images/dice3.png')),
            ), // Padding
          ), // Expanded
        ], // <Widget>[]
      ), // Row
    ); // Center
  }
}

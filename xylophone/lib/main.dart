import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(nouns.first),
          ),
        ),
      ),
    );
  }
}

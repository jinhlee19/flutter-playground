import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.pinkAccent,
          appBar: AppBar(
            title: const Text("I am cute"),
            backgroundColor: Colors.deepOrange.shade700,
          ),
          body: const Center(
            child: Image(
              image: AssetImage('images/impoor.png'),
            ),
          ),
        ),
      ),
    );

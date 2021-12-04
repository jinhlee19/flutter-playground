import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('I am rich'),
            centerTitle: true,
            backgroundColor: Colors.blueGrey.shade400,
          ),
          body: const Center(
            child: Image(
              image: AssetImage('images/diamond.png'),
            ),
          ),
        ),
      ),
    );

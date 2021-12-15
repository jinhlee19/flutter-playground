import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark().copyWith(
          primary: const Color(0xFF0A0E21),
        ),
        // secondary: Colors.yellow,
        // Q: 왜 copyWith 안으로 집어 넣을 수 없는지, 또는 copyWith 내부 대체 property
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        scaffoldBackgroundColor: const Color(0xFF090C22),
      ),
      home: const InputPage(),
    );
  }
}

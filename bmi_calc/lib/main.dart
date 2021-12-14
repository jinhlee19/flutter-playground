import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark().copyWith(
          primary: const Color(0xFF0A0E21),
        ),
        // secondary: Colors.yellow,
        // out of the copyWith Method
        // Q: 왜 copyWith 안으로 집어 넣을 수 없는지, 또는 copyWith 내부 대체 property
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        scaffoldBackgroundColor: const Color(0xFF090C22),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: const Center(
        child: Text('Body Text'),
      ),
      // ** depreciated version
      // floatingActionButton: Theme(
      //   data: ThemeData(accentColor: Colors.yellow),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     child: const Icon(Icons.add),
      //   ),
      // ),
      // ** new version (written in 12/15/2021)
      // floatingActionButton: Theme(
      //   data: ThemeData(
      //       colorScheme:
      //           ColorScheme.fromSwatch().copyWith(secondary: Colors.yellow)),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     child: const Icon(Icons.add),
      //   ),
      ),
    );
  }
}

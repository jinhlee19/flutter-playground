import 'dart:math';

// Todo #1
class CalcBrain {
  CalcBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    // returns a string with single decimal point value
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '그만 먹어라 돼지야';
    } else if (_bmi > 18.5) {
      return '역시나 어중간한 인생.';
    } else {
      return '많이 먹어라 멸치야';
    }
  }
}

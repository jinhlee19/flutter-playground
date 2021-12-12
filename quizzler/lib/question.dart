class Question {
  late String questionText;
  late bool questionAnswer;

  // solution 1 - this
  Question(this.questionText, this.questionAnswer);

  // solution 2
  // Question(String q, bool a) {
  //   questionText = q;
  //   questionAnswer = a;
  // }
  //
  // issue - from lecture
  // Question(String s, {required String q, required bool a}) {
  //   questionText = q;
  //   questionAnswer = a;
  // }
  //
  // Creating an Object from the Class -> use in main.dart
  // Question newQuestion = Question('text', true);
}

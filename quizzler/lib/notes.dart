// Dart Classes

void main() {
  Human jenny = Human(startingHeight: 15); // 제니라는 휴먼 생성
  print(jenny.height); // .으로 프로퍼티에 접근 (#1)
  jenny.talk('why is the sky blue'); //. 으로 메서드에 접근 (#2)
}

class Human {
  late double height;
  int age = 0;

  Human({required double startingHeight}) {
    height = startingHeight;
  }
  void talk(String whatToSay) {
    print(whatTosay);
  }
}

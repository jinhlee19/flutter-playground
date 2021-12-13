// Dart Classes

void main() {
  Human jenny = Human(startingHeight: 15); // 제니라는 휴먼 생성
  print(jenny.height); // .으로 프로퍼티에 접근 (#1)
  jenny.talk('why is the sky blue'); //. 으로 메서드에 접근 (#2)
}

class Human {
  late double height;
  int age = 0;
  class Human {
    human(){}
  }
  // 컨스트럭터가 dart 내에 내장되어 있어서 비워놓더라도 사용이 가능하다.
  Human({required double startingHeight}) {
    height = startingHeight;
  }
  void talk(String whatToSay) {
    print(whatTosay);
  }
}

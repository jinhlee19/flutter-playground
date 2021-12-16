import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild; // from flearner
  // TODO # 8-3 Create Function onPress *** 이 부분이 업데이트 ***
  final void Function()? onPressed;

  const ReusableCard(
      {Key? key, required this.colour, this.cardChild, this.onPressed})
      : super(key: key); // from flearner
  @override
  Widget build(BuildContext context) {
    // TODO # 8-2 GestureDetector
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

// TODO # 8-4 reusable card 를 만들때 gesture detector가 사용자의 태핑을 잡아내는 함수를 this.onPress를 통해서 명시할 수 있다.

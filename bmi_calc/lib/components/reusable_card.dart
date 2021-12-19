import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild; // from flearner require를 주기 싫을때 ?붙이는듯.
  final void Function()? onPressed;

  const ReusableCard(
      {Key? key, required this.colour, this.cardChild, this.onPressed})
      : super(key: key); // from flearner
  @override
  Widget build(BuildContext context) {
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

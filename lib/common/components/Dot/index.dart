import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7,
      height: 7,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF8620E),
      ),
    );
  }
}

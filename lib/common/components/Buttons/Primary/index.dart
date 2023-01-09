import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final void Function()? onPrimaryBtnClick; // Good
 
    const PrimaryButton(
      {
      Key? key, 
      required this.title,
      this.onPrimaryBtnClick
      }) 
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
     onPressed:onPrimaryBtnClick,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF8620E),
          minimumSize: const Size.fromHeight(50), // NEW

          textStyle:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
      child: Text(title),
    );
  }
}

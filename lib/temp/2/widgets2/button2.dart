import 'package:first_pj/temp/style/color.dart';
import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color btnColor;

  const Button2({
    super.key,
    required this.text,
    required this.textColor,
    required this.btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final bool isOpacity;
  final bool isDark;
  final Color? textColor;
  final double fontSize;
  final FontWeight? fontWeight;

  const CommonText({
    super.key,
    required this.text,
    this.isOpacity = false,
    this.isDark = false,
    this.textColor,
    required this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    final Color setColor =
        (isOpacity ? textColor?.withOpacity(0.8) : textColor) ??
            (isDark
                ? (isOpacity ? Colors.black.withOpacity(0.8) : Colors.black)
                : (isOpacity ? Colors.white.withOpacity(0.6) : Colors.white));

    return Text(
      text,
      style: TextStyle(
        color: setColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        // letterSpacing: 0.0,
        // wordSpacing: 0.0,
        height: 0.85,
      ),
    );
  }
}

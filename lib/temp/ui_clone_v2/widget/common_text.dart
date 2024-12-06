import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color color;
  final double? opacity;
  final double height;

  const CommonText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.opacity,
    this.height = 0.8,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color.withOpacity(opacity ?? 1),
        height: height,
      ),
    );
  }
}

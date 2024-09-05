import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color color;
  final double? opacity;
  final double height;
  final VoidCallback? onTap; // 텍스트를 눌렀을 때 실행할 콜백 함수

  const CommonText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.opacity,
    this.height = 0.8,
    this.color = Colors.white,
    this.onTap, // 눌렀을 때 동작을 받기 위해 onTap 추가
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // 텍스트를 눌렀을 때 onTap 함수 호출
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color.withOpacity(opacity ?? 1),
          height: height,
        ),
      ),
    );
  }
}

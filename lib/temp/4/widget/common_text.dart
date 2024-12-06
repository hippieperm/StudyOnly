// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:first_pj/temp/style/color.dart';

class CommonText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isDark;
  final bool setStyle;

  const CommonText({
    super.key,
    required this.text,
    required this.fontSize,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w600,
    this.isDark = true,
    this.setStyle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: setStyle
            ? TextStyle(
                color: isDark
                    ? textColor.withOpacity(0.8)
                    : AppColor.black.withOpacity(0.7),
                fontSize: fontSize,
                fontWeight: fontWeight,
              )
            : TextStyle(
                color: isDark ? textColor : AppColor.black,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
      ),
    );
  }
}

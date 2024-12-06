import 'package:flutter/material.dart';

import 'package:first_pj/temp/4/widget/common_text.dart';
import 'package:first_pj/temp/style/color.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Color? btnColor;
  final bool isDark;
  final bool setColor;

  const CommonButton({
    super.key,
    required this.text,
    this.btnColor,
    this.isDark = false,
    this.setColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: setColor
              ? (btnColor ??
                  (isDark
                      ? const Color.fromARGB(255, 119, 120, 121)
                      : AppColor.aYellow))
              : (isDark
                  ? const Color.fromARGB(255, 119, 120, 121)
                  : AppColor.aYellow),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 38),
          child: CommonText(
            text: text,
            fontSize: 22,
            isDark: isDark,
          ),
        ),
      ),
    );
  }
}

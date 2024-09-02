import 'package:first_pj/4/widget/common_text.dart';
import 'package:first_pj/style/color.dart';
import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  final String mainText;
  final String subText;
  final bool isDark;
  final int order;
  final IconData icon;

  const CommonCard({
    super.key,
    this.mainText = 'mainText',
    this.subText = '\$3943',
    this.isDark = false,
    required this.order,
    this.icon = Icons.currency_yen_rounded,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
        0,
        order >= 1 ? (order - 1) * -20.0 : 0.0,
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color:
              isDark ? const Color.fromARGB(255, 50, 53, 55) : AppColor.aYellow,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 34),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: mainText,
                    fontSize: 36,
                    isDark: isDark,
                  ),
                  CommonText(
                    text: subText,
                    fontSize: 28,
                    isDark: isDark,
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(-5, 4),
                child: Transform.scale(
                  scale: 2.4,
                  child: Icon(
                    icon,
                    color: isDark ? AppColor.white : AppColor.black,
                    size: 60,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

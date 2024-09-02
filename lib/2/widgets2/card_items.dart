import 'package:first_pj/style/color.dart';
import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool isDark;
  final double order;

  final Color colorLight = const Color.fromARGB(255, 203, 190, 190);
  final Color colorDark = Colors.black;
  final Color cardBgLight = AppColor.aYellow;
  final Color cardBgDark = const Color.fromARGB(255, 15, 16, 16);

  const CardItems({
    super.key,
    required this.title,
    required this.subTitle,
    required this.order,
    this.isDark = false,
  });

  @override
  Widget build(BuildContext context) {
    double yValue = order >= 1 ? order * -32 : 0;

    return Transform.translate(
      offset: Offset(0, yValue),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isDark ? cardBgDark : cardBgLight,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'YEN',
                    style: TextStyle(
                      color: isDark ? colorLight : colorDark,
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '9 514',
                    style: TextStyle(
                      color: isDark ? colorLight : colorDark,
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 10),
                  child: Icon(
                    Icons.currency_yen_rounded,
                    size: 80,
                    color: isDark ? colorLight : colorDark,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

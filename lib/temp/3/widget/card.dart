import 'package:first_pj/temp/style/color.dart';
import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  final String title, subTitle;
  final int order;
  final bool isDark;

  const Card3({
    required this.order,
    this.title = 'YEN',
    this.subTitle = 'BTC 0334',
    this.isDark = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var dy = order > 1 ? (order - 1) * -15.0 : 0.0;
    return Transform.translate(
      offset: Offset(0, dy),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isDark ? const Color.fromARGB(255, 0, 0, 0) : AppColor.aYellow,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: isDark ? AppColor.white : AppColor.black,
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: isDark ? AppColor.white : AppColor.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-8, 5),
                  child: Icon(
                    Icons.currency_yen_rounded,
                    color: isDark ? AppColor.white : AppColor.black,
                    size: 70,
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

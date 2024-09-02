import 'package:first_pj/style/color.dart';
import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  final String textTitle;
  final String textInfo;
  final bool isWhite;
  final int order;
  final IconData icon;

  final Color itemsColorLight = AppColor.white;
  final Color itemsColorDark = const Color.fromARGB(255, 61, 54, 54);
  final Color bgColorLight = AppColor.cardLight;
  final Color bgColorDark = AppColor.cardDark;

  const CardItems({
    super.key,
    required this.textTitle,
    required this.textInfo,
    required this.isWhite,
    required this.order,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    var yValue = order >= 1 ? order * -20.0 : 0.0;

    return Transform.translate(
      offset: Offset(0, yValue),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isWhite ? bgColorLight : bgColorDark,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    textTitle,
                    style: TextStyle(
                      color: isWhite ? itemsColorDark : itemsColorLight,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    textInfo,
                    style: TextStyle(
                      color: isWhite ? itemsColorDark : itemsColorLight,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(-5, 18),
                child: Transform.scale(
                  scale: 2.1,
                  child: Icon(
                    icon,
                    color: isWhite ? itemsColorDark : itemsColorLight,
                    size: 80,
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

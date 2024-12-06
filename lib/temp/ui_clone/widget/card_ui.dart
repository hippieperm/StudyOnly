import 'package:first_pj/temp/ui_clone/widget/common_text.dart';
import 'package:flutter/material.dart';

class CardUi extends StatelessWidget {
  final Color cardColor;
  final int sMDate, sDDate, eMDate, eDDate;
  final String title, subTitle;
  final String peple1, peple2, peple3, peple4;
  final bool highlight, isPuple;

  const CardUi({
    super.key,
    required this.cardColor,
    required this.title,
    required this.subTitle,
    required this.sMDate,
    required this.sDDate,
    required this.eMDate,
    required this.eDDate,
    required this.peple1,
    required this.peple2,
    required this.peple3,
    required this.peple4,
    this.highlight = false,
    this.isPuple = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        color: cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CommonText(
                  text: '$sMDate',
                  fontSize: 30,
                  isDark: true,
                ),
                CommonText(
                  text: '$sDDate',
                  fontSize: 15,
                  isDark: true,
                ),
                const SizedBox(height: 8),
                Container(
                  width: 1,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                CommonText(
                  text: '$eMDate',
                  fontSize: 30,
                  isDark: true,
                ),
                CommonText(
                  text: '$eDDate',
                  fontSize: 15,
                  isDark: true,
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: title,
                  fontSize: 53,
                  isDark: true,
                  fontWeight: FontWeight.w500,
                ),
                CommonText(
                  text: subTitle,
                  fontSize: 53,
                  isDark: true,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    CommonText(
                      text: peple1,
                      fontSize: 15,
                      textColor:
                          highlight ? Colors.black : const Color(0xff928B28),
                    ),
                    const SizedBox(width: 20),
                    CommonText(
                      text: peple2,
                      fontSize: 15,
                      textColor: isPuple
                          ? const Color(0xff654286)
                          : const Color(0xff928B28),
                    ),
                    const SizedBox(width: 20),
                    CommonText(
                      text: peple3,
                      fontSize: 15,
                      textColor: isPuple
                          ? const Color(0xff654286)
                          : const Color(0xff928B28),
                    ),
                    const SizedBox(width: 20),
                    CommonText(
                      text: peple4,
                      fontSize: 15,
                      textColor: isPuple
                          ? const Color(0xff654286)
                          : const Color(0xff928B28),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

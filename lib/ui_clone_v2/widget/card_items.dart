import 'package:first_pj/ui_clone_v2/widget/common_text.dart';
import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  final String sm, sd, em, ed;
  final String title, subTitle;
  final String user1, user2, user3, user4;
  final Color color;

  const CardItems({
    super.key,
    required this.sm,
    required this.sd,
    required this.em,
    required this.ed,
    required this.title,
    required this.subTitle,
    required this.user1,
    required this.user2,
    required this.user3,
    required this.user4,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      const CommonText(
                        text: '11',
                        fontSize: 30,
                        color: Colors.black,
                        height: 1,
                        fontWeight: FontWeight.w500,
                      ),
                      const CommonText(
                        text: '30',
                        fontSize: 20,
                        color: Colors.black,
                        height: 1,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                        width: 1,
                        height: 30,
                      ),
                      const CommonText(
                        text: '12',
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        height: 1,
                      ),
                      const CommonText(
                        text: '20',
                        fontSize: 20,
                        color: Colors.black,
                        height: 1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        text: 'DESIGN',
                        fontSize: 60,
                        color: Colors.black,
                      ),
                      CommonText(
                        text: 'MEETING',
                        fontSize: 60,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          CommonText(
                            text: 'ALEX',
                            fontSize: 20,
                            color: Colors.black,
                            opacity: 0.6,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          CommonText(
                            text: 'ALEX',
                            fontSize: 20,
                            color: Colors.black,
                            opacity: 0.6,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          CommonText(
                            text: 'ALEX',
                            fontSize: 20,
                            color: Colors.black,
                            opacity: 0.6,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

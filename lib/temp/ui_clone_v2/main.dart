import 'package:first_pj/temp/ui_clone_v2/widget/card_items.dart';
import 'package:first_pj/temp/ui_clone_v2/widget/common_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppV2());
}

class AppV2 extends StatelessWidget {
  const AppV2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1D1D1D),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(
                              'assets/profile.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CommonText(
                        text: 'MONDAY 16',
                        fontSize: 15,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CommonText(
                              text: 'TODAY',
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                            CommonText(
                              text: '•',
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffA61E72),
                            ),
                            CommonText(
                              text: '17 18 19 20',
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              opacity: 0.6,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CardItems(
                  sm: '11',
                  sd: '30',
                  em: '12',
                  ed: '20',
                  title: 'DESIGN',
                  subTitle: 'MEETING',
                  user1: 'ALEX',
                  user2: 'HELENA',
                  user3: 'NANA',
                  user4: '',
                  color: Color(0xffFCF352),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CardItems(
                  sm: '12',
                  sd: '35',
                  em: '14',
                  ed: '10',
                  title: 'DAILY',
                  subTitle: 'PROJECT',
                  user1: 'ME',
                  user2: 'RICHARD',
                  user3: 'CIRY',
                  user4: '+4',
                  color: Color(0xff9262C6),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CardItems(
                  sm: '15',
                  sd: '00',
                  em: '16',
                  ed: '30',
                  title: 'WEEKLY',
                  subTitle: 'PLANNING',
                  user1: 'DEN',
                  user2: 'NANA',
                  user3: 'MARK',
                  user4: '',
                  color: Color(0xffB3EB49),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

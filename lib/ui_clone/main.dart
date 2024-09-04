import 'package:first_pj/ui_clone/widget/card_ui.dart';
import 'package:first_pj/ui_clone/widget/common_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/profile.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                          const Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 54),
                      const CommonText(
                        text: 'MONDAY 16',
                        fontSize: 16,
                      ),
                      const SizedBox(height: 18),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CommonText(
                              text: 'TODAY',
                              fontSize: 41,
                            ),
                            CommonText(
                              text: '•',
                              fontSize: 41,
                              textColor: Color(0xffA71F74),
                            ),
                            CommonText(
                              text: '17 18 19 20',
                              fontSize: 41,
                              isOpacity: true,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 54),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    children: [
                      CardUi(
                        cardColor: Color(0xffFCF352),
                        title: 'DESIGN',
                        subTitle: 'MEETING',
                        sMDate: 11,
                        sDDate: 30,
                        eMDate: 12,
                        eDDate: 20,
                        peple1: 'ALEX',
                        peple2: 'HELENA',
                        peple3: 'NANA',
                        peple4: '',
                      ),
                      SizedBox(height: 8),
                      CardUi(
                        cardColor: Color(0XFF9262C6),
                        title: 'DAILY',
                        subTitle: 'PROJECT',
                        sMDate: 12,
                        sDDate: 35,
                        eMDate: 14,
                        eDDate: 10,
                        peple1: 'ME',
                        peple2: 'RICHARD',
                        peple3: 'CIRY',
                        peple4: '+4',
                        highlight: true,
                        isPuple: true,
                      ),
                      SizedBox(height: 8),
                      CardUi(
                        cardColor: Color(0xffB3EB49),
                        title: 'WEEKLY',
                        subTitle: 'PLANNING',
                        sMDate: 15,
                        sDDate: 30,
                        eMDate: 16,
                        eDDate: 30,
                        peple1: 'DEN',
                        peple2: 'NANA',
                        peple3: 'MARK',
                        peple4: '',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// TODAY• 17 18 19 20
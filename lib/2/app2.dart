import 'package:first_pj/style/color.dart';
import 'package:first_pj/0.1/widgets/button.dart';
import 'package:first_pj/2/widgets2/button2.dart';
import 'package:first_pj/2/widgets2/card_items.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App2());
}

class App2 extends StatelessWidget {
  const App2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColor.bgBlack,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'hi, xxx',
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'YEEZZ',
                          style: TextStyle(
                            color: AppColor.white.withOpacity(0.8),
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Total Acount',
                  style: TextStyle(
                    color: AppColor.white.withOpacity(0.7),
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '\$9 23734 2734',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button2(
                      text: 'Transfer',
                      btnColor: AppColor.aYellow,
                      textColor: AppColor.black,
                    ),
                    Button2(
                      text: 'Request',
                      btnColor: Color.fromARGB(255, 84, 86, 88),
                      textColor: AppColor.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'ViewAll',
                      style: TextStyle(
                        color: AppColor.white.withOpacity(0.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const CardItems(
                  title: 'YEN',
                  subTitle: '9748',
                  order: 0,
                ),
                const CardItems(
                  title: 'YEN',
                  subTitle: '9748',
                  order: 1,
                  isDark: true,
                ),
                const CardItems(
                  title: 'YEN',
                  subTitle: '9748',
                  order: 2,
                ),
                const CardItems(
                  title: 'YEN',
                  subTitle: '9748',
                  order: 3,
                  isDark: true,
                ),
                const CardItems(
                  title: 'YEN',
                  subTitle: '9748',
                  order: 4,
                ),
                const CardItems(
                  title: 'YEN',
                  subTitle: '9748',
                  order: 5,
                  isDark: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:first_pj/3/widget/button3.dart';
import 'package:first_pj/3/widget/card.dart';
import 'package:first_pj/style/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App3());
}

class App3 extends StatelessWidget {
  const App3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                          'Hey, XX',
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'BACK TO ME',
                          style: TextStyle(
                            color: AppColor.white.withOpacity(0.8),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Total Acount',
                  style: TextStyle(
                    color: AppColor.white.withOpacity(0.8),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '\$5 934 394',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button3(
                      text: 'Transfer',
                      textColor: AppColor.black,
                      btnColor: AppColor.aYellow,
                    ),
                    Button3(
                      text: 'Transfer',
                      textColor: AppColor.white,
                      btnColor: Color.fromARGB(132, 137, 129, 129),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 43,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'ViewAll',
                      style: TextStyle(
                        color: AppColor.white.withOpacity(0.8),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // const Card3(order: 0),
                const Card3(order: 1, isDark: false),
                const Card3(order: 2),
                const Card3(order: 3, isDark: false),
                const Card3(order: 4),
                const Card3(order: 5, isDark: false),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

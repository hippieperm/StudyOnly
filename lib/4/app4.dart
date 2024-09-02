import 'package:first_pj/4/widget/common_button.dart';
import 'package:first_pj/4/widget/common_card.dart';
import 'package:first_pj/4/widget/common_text.dart';
import 'package:first_pj/style/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App4());
}

class App4 extends StatelessWidget {
  const App4({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: AppColor.bgBlack,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(height: 59),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CommonText(
                          text: 'Hey',
                          fontSize: 48,
                        ),
                        CommonText(
                          text: 'Hey',
                          fontSize: 38,
                          setStyle: true,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    CommonButton(
                      text: 'Send',
                    ),
                    SizedBox(width: 12),
                    CommonButton(
                      text: 'Request',
                      isDark: true,
                      setColor: true,
                      btnColor: Color.fromARGB(255, 169, 166, 155),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CommonText(text: 'text', fontSize: 44),
                    CommonText(text: 'text', fontSize: 30, setStyle: true),
                  ],
                ),
                SizedBox(height: 15),
                CommonCard(order: 1),
                CommonCard(
                  order: 2,
                  isDark: true,
                ),
                CommonCard(
                  order: 3,
                  icon: Icons.money_off_csred_rounded,
                ),
                CommonCard(
                  order: 4,
                  isDark: true,
                  icon: Icons.currency_bitcoin_rounded,
                ),
                CommonCard(order: 5),
                CommonCard(
                  order: 6,
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

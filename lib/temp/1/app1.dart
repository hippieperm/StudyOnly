import 'package:first_pj/temp/style/color.dart';
import 'package:first_pj/temp/1/widgets1/button1.dart';
import 'package:first_pj/temp/1/widgets1/card_items.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const App());
  runApp(const App1());
}

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 33, 31, 31),
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'HEY, XX',
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Back To me',
                          style: TextStyle(
                            color: AppColor.white.withOpacity(0.8),
                            fontSize: 24,
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
                    fontSize: 24,
                  ),
                ),
                const Text(
                  '\$9 8324 82',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button1(
                      text: 'Transfer',
                      textColor: AppColor.black,
                      bgColor: AppColor.aYellow,
                    ),
                    Button1(
                      text: 'Request',
                      textColor: AppColor.white,
                      bgColor: Color.fromARGB(255, 60, 64, 67),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'ViewAll',
                      style: TextStyle(
                        color: AppColor.white.withOpacity(0.8),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CardItems(
                  textTitle: 'test',
                  textInfo: 'test',
                  icon: Icons.currency_yen_rounded,
                  isWhite: true,
                  order: 1,
                ),
                const CardItems(
                  textTitle: 'test',
                  textInfo: 'test',
                  icon: Icons.attach_money_rounded,
                  isWhite: false,
                  order: 2,
                ),
                const CardItems(
                  textTitle: 'test',
                  textInfo: 'test',
                  icon: Icons.currency_bitcoin_rounded,
                  isWhite: true,
                  order: 3,
                ),
                const CardItems(
                  textTitle: 'test',
                  textInfo: 'test',
                  icon: Icons.workspaces_filled,
                  isWhite: false,
                  order: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

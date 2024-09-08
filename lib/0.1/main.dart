import 'package:first_pj/2/app2.dart';
import 'package:first_pj/style/color.dart';
import 'package:first_pj/0.1/widgets/button.dart';
import 'package:first_pj/0.1/widgets/currency_card.dart';
import 'package:flutter/material.dart';

import '../1/app1.dart';

void main() {
  // runApp(const App());
  // runApp(const App1());
  runApp(const App2());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                //190 110 215
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'hey,xx',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcom Back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'transfer',
                      bgColor: AppColor.aYellow,
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: AppColor.aBlack,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'ViewAll',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const CurrencyCard(
                  order: 1,
                  isInverted: false,
                  name: 'Euro',
                  amount: '6 428',
                  code: 'EUR',
                  icon: Icons.euro_rounded,
                ),
                const CurrencyCard(
                  order: 2,
                  isInverted: true,
                  name: 'Bitcoin',
                  amount: '9 873',
                  code: 'BTC',
                  icon: Icons.currency_bitcoin_rounded,
                ),
                const CurrencyCard(
                  order: 3,
                  isInverted: false,
                  name: 'Dollar',
                  amount: '3 2834',
                  code: 'USD',
                  icon: Icons.attach_money_rounded,
                ),
                const CurrencyCard(
                  order: 4,
                  isInverted: true,
                  name: 'Euro',
                  amount: '6 428',
                  code: 'EUR',
                  icon: Icons.euro_rounded,
                ),
                const CurrencyCard(
                  order: 5,
                  isInverted: false,
                  name: 'Bitcoin',
                  amount: '9 873',
                  code: 'BTC',
                  icon: Icons.currency_bitcoin_rounded,
                ),
                const CurrencyCard(
                  order: 6,
                  isInverted: true,
                  name: 'Dollar',
                  amount: '3 2834',
                  code: 'USD',
                  icon: Icons.attach_money_rounded,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

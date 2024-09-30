import 'package:first_pj/webtoon_app_v2/v3_2/screens/home_screen_v3_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreenV3_2(),
    );
  }
}
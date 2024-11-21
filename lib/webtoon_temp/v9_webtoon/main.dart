import 'package:first_pj/webtoon_temp/v9_webtoon/screens/v9_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V9HomeScreen(),
    );
  }
}

import 'package:first_pj/temp/v15_webtoon/screens/v15_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V15HomeScreen(),
    );
  }
}

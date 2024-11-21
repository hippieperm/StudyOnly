import 'package:first_pj/v14_webtoon/screens/v14_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: V14HomeScreen(),
    );
  }
}

import 'package:first_pj/v18_webtoon/screens/v18_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: V18HomeScreen(),
    );
  }
}

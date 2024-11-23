import 'package:first_pj/v16_webtoon/screen/v16_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V16HomeScreen(),
    );
  }
}

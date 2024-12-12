import 'package:first_pj/temp/v22_webtoon/screen/v22_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V22HomeScreen(),
    );
  }
}

import 'package:first_pj/temp/v20_webtoon/main.dart';
import 'package:first_pj/temp/v21_webtoon/screen/v21_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V21HomeScreen(),
    );
  }
}

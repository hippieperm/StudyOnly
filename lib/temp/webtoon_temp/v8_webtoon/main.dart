import 'package:first_pj/temp/webtoon_temp/v8_webtoon/screens/v8_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: V8HomeScreen(),
    );
  }
}

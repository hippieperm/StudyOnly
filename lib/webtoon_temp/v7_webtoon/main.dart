import 'package:first_pj/webtoon_temp/v7_webtoon/screens/v7_home_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V7HomeScreen(),
    );
  }
}

import 'package:first_pj/temp/v32_toon/screen/v32_home_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V32HomeScreen(),
    );
  }
}

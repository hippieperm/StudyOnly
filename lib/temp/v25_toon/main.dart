import 'package:first_pj/temp/v25_toon/screen/v25_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V25HomeScreen(),
    );
  }
}

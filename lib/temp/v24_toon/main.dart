import 'package:first_pj/temp/v24_toon/screen/v24_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V24HomeScreen(),
    );
  }
}

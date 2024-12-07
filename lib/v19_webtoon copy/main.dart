import 'package:first_pj/v19_webtoon/screens/v19_home_screen.dart';
import 'package:first_pj/v19_webtoon/services/v19_api_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V20HomeScreen(),
    );
  }
}

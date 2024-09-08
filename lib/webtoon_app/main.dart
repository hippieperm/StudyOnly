import 'package:first_pj/webtoon_app/screens/home_screen.dart';
import 'package:first_pj/webtoon_app/services/api_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

import 'package:first_pj/v7_webtoon/screens/v7_home_screen.dart';
import 'package:first_pj/v7_webtoon/services/v7_api_service.dart';
import 'package:flutter/material.dart';

void main() {
  V7ApiService.getTonns();
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
    return const MaterialApp(
      home: V7HomeScreen(),
    );
  }
}

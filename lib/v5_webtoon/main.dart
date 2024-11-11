import 'package:first_pj/v5_webtoon/screens/v5_home_screen.dart';
import 'package:first_pj/v5_webtoon/services/v5_api_service.dart';
import 'package:flutter/material.dart';

void main() {
  V5ApiService.getTodayToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: V5HomeScreen(),
    );
  }
}

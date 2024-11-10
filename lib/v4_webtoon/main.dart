import 'package:first_pj/v4_webtoon/models/v4_webtoon_model.dart';
import 'package:first_pj/v4_webtoon/screens/v4_home_screen.dart';
import 'package:first_pj/v4_webtoon/services/v4_api_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V4HomeScreen(),
    );
  }
}

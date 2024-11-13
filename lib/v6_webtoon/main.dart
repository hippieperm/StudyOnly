import 'package:first_pj/v6_webtoon/screens/v6_home_screen.dart';
import 'package:first_pj/v6_webtoon/services/v6_api_service.dart';
import 'package:flutter/material.dart';

void main() {
  // V6ApiService.getToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V6HomeScreeen(),
    );
  }
}

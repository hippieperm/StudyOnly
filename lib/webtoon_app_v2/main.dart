import 'package:first_pj/webtoon_app_v2/services/api_service_v2.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen_v2.dart';

void main() {
  runApp(const App());
  ApiServiceV2.getTodaysToons();
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreenV2(),
    );
  }
}

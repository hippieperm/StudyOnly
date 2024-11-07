import 'package:first_pj/webtoon_app_v2/v3_9/screens/home_screen_v3_9.dart';
import 'package:first_pj/webtoon_app_v2/v3_9/services/api_service_v3_9.dart';
import 'package:flutter/material.dart';

void main() {
  ApiServiceV3_9().getTodaysToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreenV3_9(),
    );
  }
}

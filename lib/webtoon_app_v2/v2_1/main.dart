import 'package:first_pj/webtoon_app_v2/v2_1/screens/home_screen_v2_1.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_1.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_2.dart';
import 'package:flutter/material.dart';

void main() {
  // ApiServiceV2_1().getTodayToons();
  ApiServiceV2_2().getTodayToon();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreenV2_1(),
    );
  }
}

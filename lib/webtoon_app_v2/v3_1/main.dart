import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_2.dart';
import 'package:first_pj/webtoon_app_v2/v3_1/screens/home_screen_v3_1.dart';
import 'package:first_pj/webtoon_app_v2/v3_1/services/api_service_v3_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreenV3_1(),
    );
  }
}

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/services/api_service_v2.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen_v2.dart';

void main() {
  runApp(const App());
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

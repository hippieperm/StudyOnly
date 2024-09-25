import 'package:first_pj/webtoon_app_v2/v2_1/screens/home_screen_v2_1.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_1.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_10.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_11.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_12.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_13.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_14.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_2.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_3.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_4.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_5.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_6.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_7.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_8.dart';
import 'package:first_pj/webtoon_app_v2/v2_1/services/api_service_v2_9.dart';
import 'package:flutter/material.dart';

void main() {
  // ApiServiceV2_1().getTodayToons();
  // ApiServiceV2_2().getTodayToon();
  // ApiServiceV2_3().getWebtoonHomePage();
  // ApiServiceV2_4().getWebtoonMainPage();
  // ApiServiceV2_5().getTodayToon();
  // ApiServiceV2_6().getTodayToons();
  // ApiServiceV2_7().getTodayWebtoon();
  // ApiServiceV2_8().getToonsToday();
  // ApiServiceV2_9().getWebtoonToday();
  // ApiServiceV2_10().getTodayToon();
  // ApiServiceV2_11().getTodayToons();
  // ApiServiceV2_12().getTodayToon();
  // ApiServiceV2_13().getTodayToons();
  ApiServiceV2_14.getTodayToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreenV2_1(),
    );
  }
}

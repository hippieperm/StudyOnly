import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_7.dart';
import 'package:http/http.dart';

class ApiServiceV2_7 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  void getTodayWebtoon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonWebtoon = jsonDecode(response.body);
      for (var json in jsonWebtoon) {
        final toons = WebtoonModelV2_7.fromJson(json);
        print(toons.title);
      }
    }
  }
}

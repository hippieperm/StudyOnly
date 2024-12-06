import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_5.dart';
import 'package:http/http.dart';

class ApiServiceV2_5 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  void getTodayToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    final List<WebtoonModelV2_5> webtoonInstance = [];
    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        webtoonInstance.add(WebtoonModelV2_5.formJson(json));
        final toon = WebtoonModelV2_5.formJson(json);
        print(toon.title);
      }
    }
  }
}

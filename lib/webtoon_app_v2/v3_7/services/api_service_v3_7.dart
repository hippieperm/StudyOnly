import 'dart:convert';

import 'package:first_pj/webtoon_app_v2/v3_7/models/webtoon_model_V3_7.dart';
import 'package:http/http.dart';

class ApiServiceV3_7 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV3_7>> getTodayToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<WebtoonModelV3_7> webToonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        webToonInstances.add(WebtoonModelV3_7.fromJson(json));
      }
      return webToonInstances;
    }
    throw Error();
  }
}

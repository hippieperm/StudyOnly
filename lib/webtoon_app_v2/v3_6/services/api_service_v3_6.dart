import 'dart:convert';

import 'package:first_pj/webtoon_app_v2/v3_6/models/webtoon_model_V3_6.dart';
import 'package:http/http.dart';

class ApiServiceV3_6 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV3_6>> getTodayToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<WebtoonModelV3_6> webToonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        webToonInstances.add(WebtoonModelV3_6.fromJson(json));
      }
      return webToonInstances;
    }
    throw Error();
  }
}

import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v3_8/models/webtoon_model_V3_8.dart';
import 'package:http/http.dart';

class ApiServiceV3_8 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV3_8>> getTodayToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<WebtoonModelV3_8> webToonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        webToonInstances.add(WebtoonModelV3_8.fromJson(json));
      }
      return webToonInstances;
    }
    throw Error();
  }
}

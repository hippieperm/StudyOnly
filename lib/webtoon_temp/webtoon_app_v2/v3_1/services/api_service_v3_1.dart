import 'dart:convert';

import 'package:first_pj/webtoon_temp/webtoon_app_v2/v3_1/models/webtoon_model_V3_1.dart';
import 'package:http/http.dart';

class ApiServiceV3_1 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV3_1>> getTodayToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<WebtoonModelV3_1> webtoonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        webtoonInstances.add(WebtoonModelV3_1.formJson(json));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

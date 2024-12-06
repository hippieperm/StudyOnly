import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v3_5/models/webtoon_model_V3_5.dart';
import 'package:http/http.dart' as http;

class ApiServiceV3_5 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV3_5>> getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    List<WebtoonModelV3_5> webtoonInstance = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        webtoonInstance.add(WebtoonModelV3_5.fromJson(json));
      }
      return webtoonInstance;
    }
    throw Error();
  }
}

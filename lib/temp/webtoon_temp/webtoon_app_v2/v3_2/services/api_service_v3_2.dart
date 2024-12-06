import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v3_2/models/webtoon_model_V3_2.dart';
import 'package:http/http.dart' as http;

class ApiServiceV3_2 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV3_2>> getToonsToday() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    List<WebtoonModelV3_2> webtoonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        webtoonInstances.add(WebtoonModelV3_2.fromJson(json));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

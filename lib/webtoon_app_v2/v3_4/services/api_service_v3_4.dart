import 'dart:convert';

import 'package:first_pj/webtoon_app_v2/v3_4/models/webtoon_model_V3_4.dart';
import 'package:http/http.dart' as http;

class ApiServiceV3_4 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV3_4>> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    List<WebtoonModelV3_4> webtoonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        final toons = WebtoonModelV3_4.fromJson(json);
        webtoonInstances.add(toons);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

import 'dart:convert';

import 'package:first_pj/webtoon_app_v2/models/webtoon_model_v2.dart';
import 'package:http/http.dart' as http;

class ApiServiceV2 {
  static const String mainUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'todaty';

  static Future<List<WebtoonModelV2>> getTodaysToons() async {
    final url = Uri.parse('$mainUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
    }
    throw Error();
  }
}

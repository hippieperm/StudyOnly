import 'dart:convert';

import 'package:first_pj/v19_webtoon/models/v19_webtoon_model.dart';
import 'package:http/http.dart';

class V19ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<void> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);

      for (var json in responseBody) {
        final toons = V19WebtoonModel.fromJson(json);
        
      }
    }
  }
}

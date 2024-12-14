import 'dart:convert';

import 'package:http/http.dart';

class V25ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<void> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        
      }
    }
  }
}

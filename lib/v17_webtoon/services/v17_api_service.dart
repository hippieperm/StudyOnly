import 'dart:convert';

import 'package:http/http.dart';

class V17ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<void> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);
    }
  }
}

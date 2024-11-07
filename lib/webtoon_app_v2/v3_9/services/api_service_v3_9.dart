import 'dart:convert';

import 'package:http/http.dart';

class ApiServiceV3_9 {
  final String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  final String today = 'today';

  void getTodaysToons() async {
    final Uri url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      
    }
  }
}

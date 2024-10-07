import 'dart:convert';

import 'package:http/http.dart';

class ApiServiceV3_6 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static void getTodayToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
     final List<dynamic> jsonBody = jsonDecode(response.body);
     for (var json in jsonBody) {
       
     }
    }
  }
}

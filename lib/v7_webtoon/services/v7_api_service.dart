import 'dart:convert';

import 'package:http/http.dart';

class V7ApiService {
  static const baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  static const today = 'today';

  static Future<void> getTonns() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);
      
      for (var json in jsonBody) {
        
      }
    }
  }
}

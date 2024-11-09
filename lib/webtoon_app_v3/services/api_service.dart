import 'dart:convert';

import 'package:http/http.dart' as https;

class ApiService {
  static const baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  static const today = 'today';

  void getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await https.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var toon in jsonBody) {
        
      }
    }
    throw Error();
  }
}

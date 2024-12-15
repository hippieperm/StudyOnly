import 'dart:convert';

import 'package:first_pj/v26_toon/model/v26_toon_model.dart';
import 'package:http/http.dart';

class V26ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V26ToonModel>> getToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      List<V26ToonModel> toonList = [];
      final List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        toonList.add(V26ToonModel.fromJson(json));
      }
      return toonList;
    }
    throw Error();
  }
}

import 'dart:convert';

import 'package:first_pj/v29_toon/model/v29_toon_model.dart';
import 'package:http/http.dart';

class V29ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V29ToonModel>> getToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      List<V29ToonModel> toonList = [];

      for (var json in jsonBody) {
        toonList.add(V29ToonModel.fromJson(json));
      }

      return toonList;
    }
    throw Error();
  }
}

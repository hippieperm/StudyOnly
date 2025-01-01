import 'dart:convert';

import 'package:first_pj/v32_toon/model/v32_toon_model.dart';

import 'package:http/http.dart';

class V32ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V32ToonModel>> getToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      List<V32ToonModel> toonList = [];

      for (var json in jsonBody) {
        toonList.add(V32ToonModel.fromJson(json));
      }

      return toonList;
    }
    throw Error();
  }
}

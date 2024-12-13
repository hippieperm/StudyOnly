import 'dart:convert';

import 'package:first_pj/v24_toon/model/v24_toon_model.dart';
import 'package:http/http.dart';

class V24ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V24ToonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      List<V24ToonModel> toonList = [];

      for (var json in jsonBody) {
        toonList.add(V24ToonModel.fromJson(json));
      }
      return toonList;
    }
    throw Error();
  }
}

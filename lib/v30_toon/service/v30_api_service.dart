import 'dart:convert';

import 'package:first_pj/v30_toon/model/v30_toon_model.dart';
import 'package:http/http.dart';

class V30ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V30ToonModel>> getToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      List<V30ToonModel> toonList = [];

      for (var json in jsonBody) {
        toonList.add(V30ToonModel.fromJson(json));
      }

      return toonList;
    }
    throw Error();
  }
}

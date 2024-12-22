import 'dart:convert';

import 'package:first_pj/temp/v28_toon/model/v28_toon_model.dart';
import 'package:http/http.dart';

class V28ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V28ToonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);
      List<V28ToonModel> webtoonList = [];

      for (var json in jsonBody) {
        webtoonList.add(V28ToonModel.fromJson(json));
      }
      return webtoonList;
    }
    throw Error();
  }
}

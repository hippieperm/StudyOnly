import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/v6_webtoon/models/v6_webtoon_model.dart';
import 'package:http/http.dart';

class V6ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V6WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V6WebtoonModel> webtoonInstanse = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        // print(V6WebtoonModel.fromJson(json).title);
        webtoonInstanse.add(V6WebtoonModel.fromJson(json));
      }
      return webtoonInstanse;
    }
    throw Error();
  }
}

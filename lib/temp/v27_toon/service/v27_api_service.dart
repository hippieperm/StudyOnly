import 'dart:convert';

import 'package:first_pj/temp/v27_toon/model/v27_webtoon_model.dart';
import 'package:http/http.dart';

class V27ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V27WebtoonModel>> getToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      List<V27WebtoonModel> webtoonList = [];

      for (var json in jsonBody) {
        webtoonList.add(V27WebtoonModel.fromJson(json));
      }

      return webtoonList;
    }
    throw Error();
  }
}

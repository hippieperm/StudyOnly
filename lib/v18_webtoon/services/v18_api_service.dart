import 'dart:convert';

import 'package:first_pj/v18_webtoon/models/v18_webtoon_model.dart';
import 'package:http/http.dart';

class V18ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V18WebtoonModel>> getToons() async {
    final url = Uri.parse("$baseUrl/$today");
    final response = await get(url);
    List<V18WebtoonModel> webtoonInstansces = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBodyList = jsonDecode(response.body);

      for (var json in jsonBodyList) {
        webtoonInstansces.add(V18WebtoonModel.fromJson(json));
      }

      return webtoonInstansces;
    }
    throw Error();
  }
}

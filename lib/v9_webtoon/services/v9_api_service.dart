import 'dart:convert';

import 'package:first_pj/v9_webtoon/models/v9_webtoon_model.dart';
import 'package:http/http.dart';

class V9ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V9WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V9WebtoonModel> webtoonData = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        webtoonData.add(V9WebtoonModel.fromJson(json));
      }

      return webtoonData;
    }
    throw Error();
  }
}

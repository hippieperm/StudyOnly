import 'dart:convert';

import 'package:first_pj/temp/v22_webtoon/model/v22_webtoon_model.dart';
import 'package:http/http.dart';

class V22ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V22WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      List<V22WebtoonModel> webtoonList = [];
      final jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        webtoonList.add(V22WebtoonModel.fromJson(json));
      }
      return webtoonList;
    }
    throw Error();
  }
}

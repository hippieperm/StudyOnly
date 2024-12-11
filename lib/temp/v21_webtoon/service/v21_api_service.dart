import 'dart:convert';

import 'package:first_pj/temp/v21_webtoon/model/v21_webtoon_model.dart';
import 'package:http/http.dart';

class V21ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V21WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V21WebtoonModel> webtoonList = [];

    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        webtoonList.add(V21WebtoonModel.fromJson(json));
      }
      return webtoonList;
    }
    throw Error();
  }
}

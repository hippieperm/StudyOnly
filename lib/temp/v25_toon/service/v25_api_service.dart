import 'dart:convert';

import 'package:first_pj/temp/v25_toon/model/v25_webtoon_model.dart';
import 'package:http/http.dart';

class V25ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V25WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      List<V25WebtoonModel> webtoonList = [];

      for (var json in jsonBody) {
        webtoonList.add(V25WebtoonModel.fromJson(json));
      }

      return webtoonList;
    }
    throw Error();
  }
}

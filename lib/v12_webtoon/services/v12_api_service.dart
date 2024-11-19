import 'dart:convert';

import 'package:first_pj/v12_webtoon/models/v12_webtoon_model.dart';
import 'package:http/http.dart';

class V12ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V12WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V12WebtoonModel> webtoonInstance = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        webtoonInstance.add(V12WebtoonModel.fromJson(json));
      }
      return webtoonInstance;
    }
    throw Error();
  }
}

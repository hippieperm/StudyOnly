import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/v8_webtoon/models/v8_webtoon_model.dart';
import 'package:http/http.dart';

class V8ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V8WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V8WebtoonModel> webtoonInstance = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        webtoonInstance.add(V8WebtoonModel.fromJson(json));
      }
      return webtoonInstance;
    }
    throw Error();
  }
}

import 'dart:convert';

import 'package:first_pj/v23_webtoon_app/model/v23_webtoon_model.dart';
import 'package:http/http.dart';

class V23ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';
  static Future<List<V23WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      List<V23WebtoonModel> webtoonInstances = [];

      for (var json in jsonBody) {
        webtoonInstances.add(V23WebtoonModel.fromJson(json));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

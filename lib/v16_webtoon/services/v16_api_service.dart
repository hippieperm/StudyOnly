import 'dart:convert';

import 'package:first_pj/v16_webtoon/models/v16_webtoon_model.dart';
import 'package:http/http.dart';

class V16ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V16WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V16WebtoonModel> webtoonInstances = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        webtoonInstances.add(V16WebtoonModel.fromJson(json));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

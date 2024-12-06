import 'dart:convert';

import 'package:first_pj/temp/v15_webtoon/models/v15_webtoon_model.dart';
import 'package:http/http.dart';

class V15ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V15WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    List<V15WebtoonModel> webtoonInstances = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        webtoonInstances.add(V15WebtoonModel.fromJson(json));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

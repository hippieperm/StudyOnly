import 'dart:convert';

import 'package:first_pj/webtoon_temp/v7_webtoon/models/v7_webtoon_model.dart';
import 'package:http/http.dart';

class V7ApiService {
  static const baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  static const today = 'today';

  static Future<List<V7WebtoonModel>> getTonns() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V7WebtoonModel> webtoonInstanse = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        webtoonInstanse.add(V7WebtoonModel.fromJson(json));
      }
      return webtoonInstanse;
    }
    throw Error();
  }
}

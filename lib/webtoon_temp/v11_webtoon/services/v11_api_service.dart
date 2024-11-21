import 'dart:convert';

import 'package:first_pj/webtoon_temp/v11_webtoon/models/v11_webtoon_model.dart';
import 'package:http/http.dart';

class V11ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V11WebtoonModel>> getToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V11WebtoonModel> webtoonInstance = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        webtoonInstance.add(V11WebtoonModel.fromJson(json));
      }
      return webtoonInstance;
    }
    throw Error();
  }
}

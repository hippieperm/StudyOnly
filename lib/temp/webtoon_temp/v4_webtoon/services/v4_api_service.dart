import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/v4_webtoon/models/v4_webtoon_model.dart';
import 'package:http/http.dart';

class V4ApiService {
  static const baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  static const today = 'today';

  static Future<List<V4WebtoonModel>> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V4WebtoonModel> webtoonInstances = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        var toons = V4WebtoonModel.fromJson(json);
        webtoonInstances.add(toons);
      }

      return webtoonInstances;
    }
    throw Error();
  }
}

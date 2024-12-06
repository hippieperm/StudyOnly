import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/v10_webtoon/models/v10_webtoon_model.dart';
import 'package:http/http.dart';

class V10ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V10WebtoonModel>> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V10WebtoonModel> webtoonInstance = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        webtoonInstance.add(V10WebtoonModel.fromJson(json));
      }
      return webtoonInstance;
    }
    throw Error();
  }
}

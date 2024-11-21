import 'dart:convert';

import 'package:first_pj/webtoon_temp/v3_webtoon_app/models/webtoon_model.dart';
import 'package:http/http.dart' as https;

class ApiService {
  static const baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  static const today = 'today';

  static Future<List<WebtoonModel>> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await https.get(url);
    List<WebtoonModel> webtoonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var toon in jsonBody) {
        webtoonInstances.add(WebtoonModel.fromJson(toon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

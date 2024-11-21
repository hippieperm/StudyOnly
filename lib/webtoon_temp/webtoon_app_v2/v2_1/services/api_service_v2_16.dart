import 'dart:convert';

import 'package:first_pj/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_16.dart';
import 'package:http/http.dart';

class ApiServiceV2_16 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV2_16>> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<WebtoonModelV2_16> webtoonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        final toons = WebtoonModelV2_16.formJson(json);
        webtoonInstances.add(toons);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

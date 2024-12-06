import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_15.dart';
import 'package:http/http.dart';

class ApiServiceV2_15 {
  static const baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  static const today = 'today';

  static Future<List<WebtoonModelV2_15>> getTodayToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    List<WebtoonModelV2_15> webtoonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        final jsonToons = WebtoonModelV2_15.formJson(json);
        webtoonInstances.add(jsonToons);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

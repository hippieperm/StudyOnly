import 'dart:convert';

import 'package:first_pj/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_13.dart';
import 'package:http/http.dart';

class ApiServiceV2_13 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  Future<List<WebtoonModelV2_13>> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    final List<WebtoonModelV2_13> webtoonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);

      for (var json in jsonBody) {
        final toons = WebtoonModelV2_13.fromJson(json);
        print(toons.title);
        webtoonInstances.add(toons);
      }
      print(webtoonInstances);
      return webtoonInstances;
    }
    throw Error();
  }
}

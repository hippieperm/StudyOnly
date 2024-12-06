import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_11.dart';
import 'package:http/http.dart';

class ApiServiceV2_11 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  Future<void> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<WebtoonModelV2_11> webtoonInstances = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        final toons = WebtoonModelV2_11.fromJson(json);
        webtoonInstances.add(toons);
        print(toons.title);
      }
      return print(webtoonInstances);
    }
    throw Error();
  }
}

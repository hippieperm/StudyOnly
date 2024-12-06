import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_10.dart';
import 'package:http/http.dart';

class ApiServiceV2_10 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  void getTodayToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        final toons = WebtoonModelV2_10.fromJson(json);
        print(toons.title);
        print(toons.thumb);
      }
      return;
    }
    throw Error();
  }
}

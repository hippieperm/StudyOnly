import 'dart:convert';

import 'package:first_pj/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_9.dart';
import 'package:http/http.dart';

class ApiServiceV2_9 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  Future<void> getWebtoonToday() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<WebtoonModelV2_9> webtoonInstances = [];

    if (response.statusCode == 200) {
      print(response.body);
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        final toons = WebtoonModelV2_9.fromJson(json);
        print(toons.title);
        webtoonInstances.add(toons);
      }
      return print(webtoonInstances.length);
    }
    throw Error();
  }
}

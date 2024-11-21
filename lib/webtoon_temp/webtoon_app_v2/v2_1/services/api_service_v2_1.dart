import 'dart:convert';

import 'package:first_pj/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model.dart';
import 'package:http/http.dart' as http;

class ApiServiceV2_1 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  Future<List<WebtoonModelV2_1>> getTodayToons() async {
    List<WebtoonModelV2_1> webtoonInstance = [];
    final Uri url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final toon = WebtoonModelV2_1.fromJson(webtoon);
        webtoonInstance.add(toon);
        // webtoonInstance.add(WebtoonModelV2_1.fromJson(webtoon));
        print(toon.title);
      }
      return webtoonInstance;
    }
    throw Error();
  }
}

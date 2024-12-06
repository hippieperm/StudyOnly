import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/models/webtoon_model_v2.dart';
import 'package:http/http.dart' as http;

class ApiServiceV2 {
  static const String mainUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV2>> getTodaysToons() async {
    List<WebtoonModelV2> webtoonInstances = [];
    final url = Uri.parse('$mainUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final instance = WebtoonModelV2.formJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

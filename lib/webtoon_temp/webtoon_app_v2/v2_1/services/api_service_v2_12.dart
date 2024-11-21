import 'dart:convert';

import 'package:first_pj/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_12.dart';
import 'package:http/http.dart' as http;

class ApiServiceV2_12 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  Future<List<WebtoonModelV2_12>> getTodayToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    final List<WebtoonModelV2_12> webtoonInstances = [];

    if (response.statusCode == 200) {
      final List<WebtoonModelV2_12> webtoonInstances = [];
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        final toons = WebtoonModelV2_12.formJson(json);
        webtoonInstances.add(toons);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

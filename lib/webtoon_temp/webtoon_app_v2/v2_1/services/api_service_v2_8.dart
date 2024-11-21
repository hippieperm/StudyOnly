import 'dart:convert';

import 'package:first_pj/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_8.dart';
import 'package:http/http.dart' as http;

class ApiServiceV2_8 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  Future<List<WebtoonModelV2_8>> getToonsToday() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    final List<WebtoonModelV2_8> webtoonInstances = [];

    if (response.statusCode == 200) {
      print(response.body);
      print('\n');
      List<dynamic> jsonBody = jsonDecode(response.body);
      for (var json in jsonBody) {
        final toons = WebtoonModelV2_8.formJson(json);
        print(toons.title);
        webtoonInstances.add(toons);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

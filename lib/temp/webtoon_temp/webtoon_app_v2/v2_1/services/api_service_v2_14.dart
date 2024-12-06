import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_14.dart';
import 'package:http/http.dart' as http;

class ApiServiceV2_14 {
  static const String baseurl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV2_14>> getTodayToons() async {
    final url = Uri.parse('$baseurl/$today');
    final response = await http.get(url);

    List<WebtoonModelV2_14> webtoonInstances = [];

    if (response.statusCode == 200) {
      print(response.body);
      final List<dynamic> jsonbody = jsonDecode(response.body);
      for (var json in jsonbody) {
        final toons = WebtoonModelV2_14.formJson(json);
        print(toons.title);
        webtoonInstances.add(toons);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}

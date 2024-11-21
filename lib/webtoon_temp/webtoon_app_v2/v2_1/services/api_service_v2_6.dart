import 'dart:convert';

import 'package:first_pj/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_6.dart';
import 'package:http/http.dart';

class ApiServiceV2_6 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  void getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    final List<WebtoonModelV2_6> jsonObjectList = [];
    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var toons in jsonBody) {
        final jsonObject = WebtoonModelV2_6.fromJson(toons);
        print(jsonObject.title);
        jsonObjectList.add(jsonObject);
      }
    }
  }
}

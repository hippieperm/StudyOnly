import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_2.dart';
import 'package:http/http.dart';

class ApiServiceV2_2 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  void getTodayToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body);
      for (var toon in json) {
        final toonInfo = WebtoonModelV2_2.formJson(toon);
        print(toonInfo.title);
        print(toonInfo.thumb);
        print(toonInfo.id);
      }
      return; //void 메서드에서 리턴을 안해주면 아래 Error()까지 실행됨;
    }
    throw Error();
  }
}

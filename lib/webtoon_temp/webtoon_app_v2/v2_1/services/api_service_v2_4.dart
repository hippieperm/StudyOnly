import 'dart:convert';

import 'package:first_pj/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_4.dart';
import 'package:http/http.dart';

class ApiServiceV2_4 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  void getWebtoonMainPage() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      List<dynamic> responseJson = jsonDecode(response.body);
      for (var toon in responseJson) {
        final webtoonModel = WebtoonModelV2_4.formJson(toon);
        print(webtoonModel.title);
        print(webtoonModel.id);
        print(webtoonModel.thumb);
      }
      return;
    }
    throw Error();
  }
}

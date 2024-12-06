import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/webtoon_app_v2/v2_1/models/webtoon_model_v2_3.dart';
import 'package:http/http.dart' as http;

class ApiServiceV2_3 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  void getWebtoonHomePage() async {
    List<WebtoonModelV2_3> webtoonInstance = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> responseBody = jsonDecode(response.body);
      // print(responseBody);
      for (var webtoonModel in responseBody) {
        final webtoonInstance = WebtoonModelV2_3.formJson(webtoonModel);
        print(webtoonInstance.title);
      }
      return;
    }
    throw Error();
  }
}

import 'dart:convert';

import 'package:first_pj/webtoon_temp/webtoon_app_v2/v3_9/models/webtoon_model_v3_9.dart';
import 'package:http/http.dart';

class ApiServiceV3_9 {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<WebtoonModelV3_9>> getTodaysToons() async {
    final Uri url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<WebtoonModelV3_9> webtoonsInstansce = [];

    if (response.statusCode == 200) {
      final List<dynamic> jsonBody = jsonDecode(response.body);
      for (var element in jsonBody) {
        // print(WebtoonModelV3_9.fromJson(element).title);
        webtoonsInstansce.add(WebtoonModelV3_9.fromJson(element));
      }

      return webtoonsInstansce;
    }
    throw Error();
  }
}

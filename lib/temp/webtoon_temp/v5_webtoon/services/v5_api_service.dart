import 'dart:convert';

import 'package:first_pj/temp/webtoon_temp/v5_webtoon/models/v5_webtoon_model.dart';
import 'package:http/http.dart';

class V5ApiService {
  static const baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  static const today = 'today';

  static Future<List<V5WebtoonModel>> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);
    List<V5WebtoonModel> webtoonInstansec = [];

    if (response.statusCode == 200) {
      List<dynamic> jsonBody = jsonDecode(response.body);

      for (var jsonData in jsonBody) {
        var webtoonData = V5WebtoonModel.formJson(jsonData);
        // print(webtoonData.title);
        webtoonInstansec.add(webtoonData);
      }
      return webtoonInstansec;
    }
    throw Error();
  }
}

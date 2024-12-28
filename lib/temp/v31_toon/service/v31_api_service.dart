import 'dart:convert';

import 'package:first_pj/temp/v31_toon/model/v31_toon_model.dart';

import 'package:http/http.dart';

class V31ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<V31ToonModel>> getToon() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await get(url);

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      List<V31ToonModel> toonList = [];

      for (var json in jsonBody) {
        toonList.add(V31ToonModel.fromJson(json));
      }

      return toonList;
    }
    throw Error();
  }
}

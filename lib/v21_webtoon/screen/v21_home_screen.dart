import 'package:first_pj/v21_webtoon/model/v21_webtoon_model.dart';
import 'package:first_pj/v21_webtoon/service/v21_api_service.dart';
import 'package:flutter/material.dart';

class V21HomeScreen extends StatelessWidget {
  V21HomeScreen({
    super.key,
  });

  Future<List<V21WebtoonModel>> toons = V21ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'Toons!',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

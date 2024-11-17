import 'package:first_pj/v10_webtoon/models/v10_webtoon_model.dart';
import 'package:first_pj/v10_webtoon/services/v10_api_service.dart';
import 'package:flutter/material.dart';

class V10HomeScreen extends StatelessWidget {
  V10HomeScreen({super.key});

  Future<List<V10WebtoonModel>> webtoon = V10ApiService.getTodayToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOON!',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoon,
        builder: (context, snapshot) {},
      ),
    );
  }
}

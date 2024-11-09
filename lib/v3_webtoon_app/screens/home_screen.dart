import 'package:first_pj/v3_webtoon_app/models/webtoon_model.dart';
import 'package:first_pj/v3_webtoon_app/services/api_service.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> toons = ApiService.getTodayToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          "Today's TOONS",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ),
      body: FutureBuilder(
        future: toons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text(
              'data',
              style: TextStyle(color: Colors.white),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

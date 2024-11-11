import 'package:first_pj/v5_webtoon/models/v5_webtoon_model.dart';
import 'package:first_pj/v5_webtoon/services/v5_api_service.dart';
import 'package:flutter/material.dart';

class V5HomeScreen extends StatelessWidget {
  V5HomeScreen({super.key});
  Future<List<V5WebtoonModel>> webtoon = V5ApiService.getTodayToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          "Today's Toon",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text(
              "data",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
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

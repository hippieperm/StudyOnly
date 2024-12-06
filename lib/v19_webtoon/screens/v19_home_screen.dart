import 'package:first_pj/v19_webtoon/models/v19_webtoon_model.dart';
import 'package:first_pj/v19_webtoon/services/v19_api_service.dart';
import 'package:flutter/material.dart';

class V19HomeScreen extends StatelessWidget {
  V19HomeScreen({super.key});

  Future<List<V19WebtoonModel>> toons = V19ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOONSNSNS',
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

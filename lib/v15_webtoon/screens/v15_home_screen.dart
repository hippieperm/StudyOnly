import 'package:first_pj/v15_webtoon/models/v15_webtoon_model.dart';
import 'package:first_pj/v15_webtoon/service/v15_api_service.dart';
import 'package:flutter/material.dart';

class V15HomeScreen extends StatelessWidget {
  V15HomeScreen({super.key});

  Future<List<V15WebtoonModel>> toons = V15ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOOOOON!',
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

import 'package:first_pj/v14_webtoon/models/v14_webtoon_model.dart';
import 'package:first_pj/v14_webtoon/services/v14_api_service.dart';
import 'package:flutter/material.dart';

class V14HomeScreen extends StatelessWidget {
  V14HomeScreen({super.key});

  Future<List<V14WebtoonModel>> toons = V14ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOOOOON!!!!',
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

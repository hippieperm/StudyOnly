import 'package:first_pj/v8_webtoon/models/v8_webtoon_model.dart';
import 'package:first_pj/v8_webtoon/services/v8_api_service.dart';
import 'package:flutter/material.dart';

class V8HomeScreen extends StatelessWidget {
  V8HomeScreen({super.key});

  Future<List<V8WebtoonModel>> toons = V8ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: const Text(
          'TOONS!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder(
        future: toons,
        builder: (context, snapshot) {},
      ),
    );
  }
}

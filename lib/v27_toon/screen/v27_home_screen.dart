import 'package:first_pj/v27_toon/model/v27_webtoon_model.dart';
import 'package:first_pj/v27_toon/service/v27_api_service.dart';
import 'package:flutter/material.dart';

class V27HomeScreen extends StatelessWidget {
  V27HomeScreen({super.key});

  Future<List<V27WebtoonModel>> toons = V27ApiService.getToon();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOON!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
      body: FutureBuilder(
        future: toons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemBuilder: itemBuilder,
              separatorBuilder: separatorBuilder,
              itemCount: itemCount,
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

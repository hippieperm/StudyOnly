import 'package:first_pj/v17_webtoon/models/v17_webtoon_model.dart';
import 'package:first_pj/v17_webtoon/services/v17_api_service.dart';
import 'package:flutter/material.dart';

class V17HomeScreen extends StatelessWidget {
  V17HomeScreen({super.key});

  Future<List<V17WebtoonModel>> toon = V17ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: const Text(
          'Toons!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        future: toon,
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

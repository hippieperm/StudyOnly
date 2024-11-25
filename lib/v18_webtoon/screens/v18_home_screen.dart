import 'package:first_pj/v18_webtoon/models/v18_webtoon_model.dart';
import 'package:first_pj/v18_webtoon/services/v18_api_service.dart';
import 'package:flutter/material.dart';

class V18HomeScreen extends StatelessWidget {
  V18HomeScreen({super.key});

  Future<List<V18WebtoonModel>> toons = V18ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: const Text(
          'TOOoooOON!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
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

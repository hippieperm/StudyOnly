import 'package:first_pj/v13_webtoon/models/v13_webtoon_model.dart';
import 'package:first_pj/v13_webtoon/services/v13_api_service.dart';
import 'package:flutter/material.dart';

class V13HomeScreen extends StatelessWidget {
  V13HomeScreen({super.key});

  Future<List<V13WebtoonModel>> toons = V13ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: const Text(
          'TOONS!',
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
              itemCount: snapshot.data!.length,
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

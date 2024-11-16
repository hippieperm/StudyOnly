import 'package:first_pj/v9_webtoon/models/v9_webtoon_model.dart';
import 'package:first_pj/v9_webtoon/services/v9_api_service.dart';
import 'package:flutter/material.dart';

class V9HomeScreen extends StatelessWidget {
  V9HomeScreen({super.key});

  Future<List<V9WebtoonModel>> toons = V9ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: const Text(
          'TOONSSS!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder(
        future: toons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemBuilder: itemBuilder,
              separatorBuilder: (context, index) => const SizedBox(
                height: 55,
              ),
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

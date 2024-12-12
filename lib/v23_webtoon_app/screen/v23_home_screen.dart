import 'package:first_pj/v23_webtoon_app/model/v23_webtoon_model.dart';
import 'package:first_pj/v23_webtoon_app/service/v23_api_service.dart';
import 'package:flutter/material.dart';

class V23HomeScreen extends StatelessWidget {
  V23HomeScreen({super.key});

  Future<List<V23WebtoonModel>> toons = V23ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'Toon!',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
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
              itemCount: ,
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

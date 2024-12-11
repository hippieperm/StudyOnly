import 'package:first_pj/v22_webtoon/model/v22_webtoon_model.dart';
import 'package:first_pj/v22_webtoon/service/v22_api_service.dart';
import 'package:flutter/material.dart';

class V22HomeScreen extends StatelessWidget {
  V22HomeScreen({super.key});

  Future<List<V22WebtoonModel>> toons = V22ApiService.getToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          'TOON!',
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
              separatorBuilder: (context, index) => ,
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

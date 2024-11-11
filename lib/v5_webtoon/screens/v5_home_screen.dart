import 'package:first_pj/v5_webtoon/models/v5_webtoon_model.dart';
import 'package:first_pj/v5_webtoon/services/v5_api_service.dart';
import 'package:flutter/material.dart';

class V5HomeScreen extends StatelessWidget {
  V5HomeScreen({super.key});
  Future<List<V5WebtoonModel>> webtoon = V5ApiService.getTodayToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212528),
      appBar: AppBar(
        backgroundColor: const Color(0xff212528),
        title: Text(
          "Today's Toon",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemBuilder: (context, index) {
                print(index);
                var toon = snapshot.data![index];
                return Text(
                  'id : ${toon.id} title : ${toon.title} thumb : ${toon.thumb}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(
                      0.85,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 30),
              itemCount: snapshot.data!.length,
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              strokeAlign: 10,
              strokeWidth: 6,
              color: Colors.yellow,
            ),
          );
        },
      ),
    );
  }
}

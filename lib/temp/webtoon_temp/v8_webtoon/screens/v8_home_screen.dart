import 'package:first_pj/temp/webtoon_temp/v8_webtoon/models/v8_webtoon_model.dart';
import 'package:first_pj/temp/webtoon_temp/v8_webtoon/services/v8_api_service.dart';
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
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                print(index);
                var toon = snapshot.data![index];

                return Text(
                  '제목 : ${toon.title}\n 웹툰아이디: ${toon.id} 썸네일링크 : ${toon.thumb}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 44),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.green,
              color: Colors.red,
              strokeAlign: 7,
            ),
          );
        },
      ),
    );
  }
}
